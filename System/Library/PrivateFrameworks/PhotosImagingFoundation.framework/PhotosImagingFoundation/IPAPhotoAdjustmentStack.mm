@interface IPAPhotoAdjustmentStack
- (PFIntSize_st)inputSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)maskUUIDs;
- (id)minimumVersionForFormat:(id)format;
@end

@implementation IPAPhotoAdjustmentStack

- (PFIntSize_st)inputSize
{
  p_inputSize = &self->_inputSize;
  width = self->_inputSize.width;
  height = p_inputSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)maskUUIDs
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  adjustments = [(IPAAdjustmentStack *)self adjustments];
  v3 = [adjustments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    orderedSet = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(adjustments);
        }

        maskUUID = [*(*(&v11 + 1) + 8 * i) maskUUID];
        if (maskUUID)
        {
          if (!orderedSet)
          {
            orderedSet = [MEMORY[0x277CBEB40] orderedSet];
          }

          [orderedSet addObject:maskUUID];
        }
      }

      v4 = [adjustments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    orderedSet = 0;
  }

  v9 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:orderedSet];

  return v9;
}

- (id)minimumVersionForFormat:(id)format
{
  formatCopy = format;
  if ([formatCopy isEqualToString:@"com.apple.photo"])
  {
    v5 = @"1.4";
    v6 = @"1.4";
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IPAPhotoAdjustmentStack;
    v5 = [(IPAAdjustmentStack *)&v8 minimumVersionForFormat:formatCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = IPAPhotoAdjustmentStack;
  v4 = [(IPAAdjustmentStack *)&v6 copyWithZone:zone];
  *(v4 + 40) = self->_inputSize;
  *(v4 + 3) = self->_orientation;
  objc_storeStrong(v4 + 4, self->_pipeline);
  return v4;
}

@end