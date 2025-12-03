@interface OS_axr_logical_image_list
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (OS_axr_logical_image_list)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OS_axr_logical_image_list

- (NSString)debugDescription
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@\n", -[OS_axr_logical_image_list description](self, "description")];
  v4 = self + 2;
  if (!self)
  {
    v4 = 0;
  }

  for (i = v4[1].super.super.isa; i; i = *i)
  {
    v3 = [v3 stringByAppendingString:{AXRImageGroup::GetDebugDescription(i, "\t")}];
  }

  return v3;
}

- (void)dealloc
{
  if (self)
  {
    AXRLogicalImageList::~AXRLogicalImageList(&self[2]);
    v3.receiver = self;
    v3.super_class = OS_axr_logical_image_list;
    [(OS_axr_logical_image_list *)&v3 dealloc];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    v8.receiver = self;
    v8.super_class = OS_axr_logical_image_list;
    v5 = [(OS_axr_logical_image_list *)&v8 isEqual:?];
    if (v5)
    {
      if (self)
      {
        v6 = &self[2];
      }

      else
      {
        v6 = 0;
      }

      LOBYTE(v5) = AXRLogicalImageList::IsEqual(v6, (equal + 16));
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    v4 = &self[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4[1];
  if (v5)
  {
    v6 = 16;
    do
    {
      v6 += AXRImageGroup::GetSerializedSize(v5);
      v5 = *v5;
    }

    while (v5);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = 16;
  }

  v7 = malloc_type_malloc(v6, 0xC0CD0CE3uLL);
  if (v7)
  {
    v8 = v7;
    v14 = v7;
    v9 = v6;
    if (v6 >= 4)
    {
      *v7 = 1920496243;
      v14 = v7 + 1;
      v9 = v6 - 4;
      if (v6 - 4 >= 4)
      {
        v7[1] = 0x1000000;
        v14 = v7 + 2;
        v9 = v6 - 8;
        if (v6 - 8 >= 8)
        {
          v10 = v4[1];
          *(v8 + 1) = bswap64(*v4);
          v14 = v8 + 4;
          v15 = v6 - 16;
          do
          {
            if (!v10)
            {
              break;
            }

            v11 = *v10;
            v12 = AXRImageGroup::Serialize(v10, &v14, &v15);
            v10 = v11;
          }

          while (v12);
          v9 = v15;
        }
      }
    }

    if (v9 >= v6)
    {
      v9 = v6;
    }

    v15 = v9;
    v13 = objc_autoreleasePoolPush();
    [coder encodeDataObject:{objc_msgSend(MEMORY[0x29EDB8DA0], "dataWithBytesNoCopy:length:freeWhenDone:", v8, v6 - v15, 1, v14)}];
    objc_autoreleasePoolPop(v13);
  }
}

- (OS_axr_logical_image_list)initWithCoder:(id)coder
{
  if (!self)
  {
    return 0;
  }

  v4 = [(OS_object *)self init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    decodeDataObject = [coder decodeDataObject];
    if (decodeDataObject)
    {
      v8 = decodeDataObject;
      bytes = [decodeDataObject bytes];
      v10 = 0;
      v11 = [v8 length];
      AXRLogicalImageList::AXRLogicalImageList(&v4[2], &bytes, &v11, &v10, 2, v9);
      if (!v10)
      {
        goto LABEL_5;
      }

      AXRLogicalImageList::~AXRLogicalImageList(&v4[2]);
    }

    [(OS_axr_logical_image_list *)v4 dealloc];
    v4 = 0;
LABEL_5:
    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

@end