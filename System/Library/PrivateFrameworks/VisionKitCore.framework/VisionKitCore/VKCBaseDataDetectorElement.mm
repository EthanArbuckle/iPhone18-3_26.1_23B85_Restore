@interface VKCBaseDataDetectorElement
+ (id)stringArrayForVKDataDetectorTypes:(unint64_t)types;
+ (unint64_t)dataDetectorTypesForScannerResult:(id)result;
- (BOOL)containsPoint:(CGPoint)point;
- (NSString)description;
- (NSString)stringValue;
- (NSUUID)uuid;
- (VKCBaseDataDetectorElement)init;
- (double)area;
- (double)maxLineHeight;
@end

@implementation VKCBaseDataDetectorElement

- (VKCBaseDataDetectorElement)init
{
  v3.receiver = self;
  v3.super_class = VKCBaseDataDetectorElement;
  result = [(VKCBaseDataDetectorElement *)&v3 init];
  if (result)
  {
    result->_area = -1.0;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = VKMUIStringForDDTypes([(VKCBaseDataDetectorElement *)self dataDetectorTypes]);
  v6 = [v3 stringWithFormat:@"<%@: %p> : %@", v4, self, v5];

  return v6;
}

- (double)area
{
  v15 = *MEMORY[0x1E69E9840];
  result = self->_area;
  if (result <= 0.0)
  {
    self->_area = 0.0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    boundingQuads = [(VKCBaseDataDetectorElement *)self boundingQuads];
    v5 = [boundingQuads countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(boundingQuads);
          }

          [*(*(&v10 + 1) + 8 * v8) area];
          self->_area = v9 + self->_area;
          ++v8;
        }

        while (v6 != v8);
        v6 = [boundingQuads countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    return self->_area;
  }

  return result;
}

- (double)maxLineHeight
{
  v16 = *MEMORY[0x1E69E9840];
  result = self->_maxLineHeight;
  if (result <= 0.0)
  {
    self->_maxLineHeight = 0.0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    boundingQuads = [(VKCBaseDataDetectorElement *)self boundingQuads];
    v5 = [boundingQuads countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(boundingQuads);
          }

          [*(*(&v11 + 1) + 8 * i) sideLength];
          if (maxLineHeight < v10)
          {
            maxLineHeight = v10;
          }

          if (self->_maxLineHeight >= maxLineHeight)
          {
            maxLineHeight = self->_maxLineHeight;
          }

          self->_maxLineHeight = maxLineHeight;
        }

        v6 = [boundingQuads countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return self->_maxLineHeight;
  }

  return result;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_uuid;
    self->_uuid = uUID;

    uuid = self->_uuid;
  }

  return uuid;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  boundingQuads = [(VKCBaseDataDetectorElement *)self boundingQuads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__VKCBaseDataDetectorElement_containsPoint___block_invoke;
  v8[3] = &__block_descriptor_48_e23_B32__0__VKQuad_8Q16_B24l;
  *&v8[4] = x;
  *&v8[5] = y;
  v6 = [boundingQuads vk_containsObjectPassingTest:v8];

  return v6;
}

+ (unint64_t)dataDetectorTypesForScannerResult:(id)result
{
  resultCopy = result;
  category = [resultCopy category];
  if (!resultCopy)
  {
    v8 = 0;
    goto LABEL_31;
  }

  if (category > 3)
  {
    if ((category - 5) >= 2)
    {
      v5 = 4;
      v6 = 0x800000;
      if (category != 7)
      {
        v6 = 0;
      }

      v7 = category == 4;
      goto LABEL_12;
    }
  }

  else if (category >= 2)
  {
    v5 = 1;
    v6 = 2;
    if (category != 3)
    {
      v6 = 0;
    }

    v7 = category == 2;
LABEL_12:
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_31;
  }

  type = [resultCopy type];

  if (CFStringCompare(*MEMORY[0x1E69999C8], type, 0))
  {
    if (CFStringCompare(*MEMORY[0x1E6999A50], type, 0))
    {
      if (CFStringCompare(*MEMORY[0x1E6999A00], type, 0))
      {
        if (CFStringCompare(*MEMORY[0x1E69999F0], type, 0) == kCFCompareEqualTo)
        {
          goto LABEL_29;
        }

        if (CFStringCompare(*MEMORY[0x1E69999E0], type, 0) == kCFCompareEqualTo || CFStringCompare(*MEMORY[0x1E6999A60], type, 0) == kCFCompareEqualTo)
        {
          v8 = 64;
          goto LABEL_31;
        }

        if (CFStringCompare(*MEMORY[0x1E69999E8], type, 0) == kCFCompareEqualTo)
        {
          v8 = 128;
          goto LABEL_31;
        }

        if (CFStringCompare(*MEMORY[0x1E69999D8], type, 0))
        {
          if (CFStringCompare(*MEMORY[0x1E69999C0], type, 0))
          {
            if (CFStringCompare(*MEMORY[0x1E6999A10], type, 0))
            {
              v8 = (CFStringCompare(*MEMORY[0x1E69999F8], type, 0) == kCFCompareEqualTo) << 11;
            }

            else
            {
              v8 = 1024;
            }
          }

          else
          {
            v8 = 512;
          }
        }

        else
        {
LABEL_29:
          v8 = 256;
        }
      }

      else
      {
        v8 = 32;
      }
    }

    else
    {
      v8 = 8;
    }
  }

  else
  {
    v8 = 16;
  }

LABEL_31:

  return v8;
}

- (NSString)stringValue
{
  scannerResult = [(VKCBaseDataDetectorElement *)self scannerResult];
  type = [scannerResult type];
  v5 = [type stringByReplacingOccurrencesOfString:@"Type" withString:&stru_1F2C04538];

  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VKCBaseDataDetectorElement;
  stringValue = [(VKCBaseElement *)&v10 stringValue];
  v8 = [v6 stringWithFormat:@"%@: %@", v5, stringValue];

  return v8;
}

+ (id)stringArrayForVKDataDetectorTypes:(unint64_t)types
{
  if (types)
  {
    v4 = [MEMORY[0x1E695E0F0] vk_arrayByAddingNonNilObject:@"Phone Number"];
    if ((types & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x1E695E0F0];
  if ((types & 2) != 0)
  {
LABEL_5:
    v5 = [v4 vk_arrayByAddingNonNilObject:@"Address"];

    v4 = v5;
  }

LABEL_6:
  if ((types & 4) != 0)
  {
    v8 = [v4 vk_arrayByAddingNonNilObject:@"Calendar Event"];

    v4 = v8;
    if ((types & 8) == 0)
    {
LABEL_8:
      if ((types & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((types & 8) == 0)
  {
    goto LABEL_8;
  }

  v9 = [v4 vk_arrayByAddingNonNilObject:@"Tracking Number"];

  v4 = v9;
  if ((types & 0x10) == 0)
  {
LABEL_9:
    if ((types & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = [v4 vk_arrayByAddingNonNilObject:@"Flight Number"];

  v4 = v10;
  if ((types & 0x20) == 0)
  {
LABEL_10:
    if ((types & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [v4 vk_arrayByAddingNonNilObject:@"Lookup Suggestion"];

  v4 = v11;
  if ((types & 0x40) == 0)
  {
LABEL_11:
    if ((types & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = [v4 vk_arrayByAddingNonNilObject:@"Web URL"];

  v4 = v12;
  if ((types & 0x80) == 0)
  {
LABEL_12:
    if ((types & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = [v4 vk_arrayByAddingNonNilObject:@"Mail URL"];

  v4 = v13;
  if ((types & 0x100) == 0)
  {
LABEL_13:
    if ((types & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  v14 = [v4 vk_arrayByAddingNonNilObject:@"Generic URL"];

  v4 = v14;
  if ((types & 0x200) != 0)
  {
LABEL_14:
    v6 = [v4 vk_arrayByAddingNonNilObject:@"Email"];

    v4 = v6;
  }

LABEL_15:
  if (types == 0x800000)
  {
    v7 = @"Proper Name";
  }

  else if (types)
  {
    if (types != -1)
    {
      goto LABEL_30;
    }

    v7 = @"All";
  }

  else
  {
    v7 = @"None";
  }

  v15 = [v4 vk_arrayByAddingNonNilObject:v7];

  v4 = v15;
LABEL_30:

  return v4;
}

@end