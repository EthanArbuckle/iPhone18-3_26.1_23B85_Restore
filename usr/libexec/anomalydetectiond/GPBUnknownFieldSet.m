@interface GPBUnknownFieldSet
- (BOOL)hasField:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFieldFrom:(int)a3 input:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)description;
- (id)getField:(int)a3;
- (id)sortedFields;
- (unint64_t)countOfFields;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (unint64_t)serializedSizeAsMessageSet;
- (void)addField:(id)a3;
- (void)dealloc;
- (void)getTags:(int *)a3;
- (void)mergeFromCodedInputStream:(id)a3;
- (void)mergeFromData:(id)a3;
- (void)mergeUnknownFields:(id)a3;
- (void)writeAsMessageSetTo:(id)a3;
- (void)writeToCodedOutputStream:(id)a3;
@end

@implementation GPBUnknownFieldSet

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[GPBUnknownFieldSet allocWithZone:?]];
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_10031BA18, v4);
  }

  return v4;
}

- (void)dealloc
{
  fields = self->fields_;
  if (fields)
  {
    CFRelease(fields);
  }

  v4.receiver = self;
  v4.super_class = GPBUnknownFieldSet;
  [(GPBUnknownFieldSet *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  fields = self->fields_;
  v6 = *(a3 + 1);
  result = (fields | v6) == 0;
  if (fields)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return CFEqual(self->fields_, v6) != 0;
  }

  return result;
}

- (unint64_t)hash
{
  fields = self->fields_;
  if (fields)
  {
    return CFHash(fields);
  }

  else
  {
    return objc_opt_class();
  }
}

- (BOOL)hasField:(int)a3
{
  fields = self->fields_;
  if (fields)
  {
    LOBYTE(fields) = CFDictionaryGetValue(fields, a3) != 0;
  }

  return fields;
}

- (id)getField:(int)a3
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

- (unint64_t)countOfFields
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

- (id)sortedFields
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v5 = (&v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, &v15, v5);
    v6 = &v15 - 2 * Count;
    if (Count)
    {
      v7 = 0;
      v8 = v6 + 1;
      do
      {
        v9 = v5[v7];
        *(v8 - 1) = v9;
        *v8 = v9;
        ++v7;
        v8 += 2;
      }

      while (Count != v7);
      qsort_b(&v15 - 2 * Count, Count, 0x10uLL, &stru_100435678);
      v10 = (v6 + 1);
      v11 = (&v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = Count;
      do
      {
        v13 = *v10;
        v10 += 2;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      qsort_b(v6, 0, 0x10uLL, &stru_100435678);
    }

    return [NSArray arrayWithObjects:v5 count:Count];
  }

  else
  {

    return +[NSArray array];
  }
}

- (void)writeToCodedOutputStream:(id)a3
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, &v14, v7);
    if (Count < 2)
    {
      [*v7 writeToOutput:a3];
    }

    else
    {
      v8 = &v14 - 2 * Count;
      v9 = 0;
      v10 = v8 + 1;
      do
      {
        v11 = v7[v9];
        *(v10 - 1) = v11;
        *v10 = v11;
        ++v9;
        v10 += 2;
      }

      while (Count != v9);
      qsort_b(&v14 - 2 * Count, Count, 0x10uLL, &stru_100435698);
      v12 = (v8 + 1);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v13 writeToOutput:a3];
        --Count;
      }

      while (Count);
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", objc_opt_class(), self];
  [(NSMutableString *)v3 appendString:GPBTextFormatForUnknownFieldSet(self, @"  ")];
  [(NSMutableString *)v3 appendString:@"}"];
  return v3;
}

- (unint64_t)serializedSize
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_10031BF54, &context);
    return context;
  }

  return result;
}

- (void)writeAsMessageSetTo:(id)a3
{
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_10031BFA8, a3);
  }
}

- (unint64_t)serializedSizeAsMessageSet
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_10031BFF4, &context);
    return context;
  }

  return result;
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:[(GPBUnknownFieldSet *)self serializedSize]];
  v4 = [[GPBCodedOutputStream alloc] initWithData:v3];
  [(GPBUnknownFieldSet *)self writeToCodedOutputStream:v4];

  return v3;
}

- (void)addField:(id)a3
{
  v5 = [a3 number];
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  fields = self->fields_;
  if (!fields)
  {
    fields = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    self->fields_ = fields;
  }

  CFDictionarySetValue(fields, v5, a3);
}

- (void)mergeUnknownFields:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 1);
    if (v4)
    {
      CFDictionaryApplyFunction(v4, sub_10031C20C, self);
    }
  }
}

- (void)mergeFromData:(id)a3
{
  v4 = [[GPBCodedInputStream alloc] initWithData:a3];
  [(GPBUnknownFieldSet *)self mergeFromCodedInputStream:v4];
  [(GPBCodedInputStream *)v4 checkLastTagWas:0];
}

- (BOOL)mergeFieldFrom:(int)a3 input:(id)a4
{
  if (!GPBWireFormatIsValidTag(a3))
  {
    sub_10031C6F8(a2, self);
  }

  TagFieldNumber = GPBWireFormatGetTagFieldNumber(a3);
  TagWireType = GPBWireFormatGetTagWireType(a3);
  v10 = 0;
  if (TagWireType <= 1)
  {
    if (TagWireType)
    {
      if (TagWireType == 1)
      {
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addFixed64:", GPBCodedInputStreamReadFixed64(a4 + 1)}];
      }
    }

    else
    {
      v10 = 1;
      [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addVarint:", GPBCodedInputStreamReadInt64(a4 + 1)}];
    }
  }

  else
  {
    switch(TagWireType)
    {
      case 2:
        RetainedBytes = GPBCodedInputStreamReadRetainedBytes(a4 + 1);
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addLengthDelimited:", RetainedBytes}];

        break;
      case 3:
        v12 = objc_alloc_init(GPBUnknownFieldSet);
        [a4 readUnknownGroup:TagFieldNumber message:v12];
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addGroup:", v12}];

        break;
      case 5:
        v10 = 1;
        [-[GPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:TagFieldNumber create:{1), "addFixed32:", GPBCodedInputStreamReadFixed32(a4 + 1)}];
        break;
    }
  }

  return v10;
}

- (void)mergeFromCodedInputStream:(id)a3
{
  do
  {
    Tag = GPBCodedInputStreamReadTag(a3 + 8);
  }

  while (Tag && [(GPBUnknownFieldSet *)self mergeFieldFrom:Tag input:a3]);
}

- (void)getTags:(int *)a3
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v9 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    CFDictionaryGetKeysAndValues(self->fields_, v7, 0);
    for (; Count; --Count)
    {
      v8 = *v7++;
      *a3++ = v8;
    }
  }
}

@end