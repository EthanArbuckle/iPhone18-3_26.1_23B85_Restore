@interface PUIStylePickerSelectionChange
- (BOOL)hasChanges;
@end

@implementation PUIStylePickerSelectionChange

- (BOOL)hasChanges
{
  outCount = 0;
  v3 = objc_opt_class();
  v4 = class_copyPropertyList(v3, &outCount);
  if (outCount)
  {
    v5 = 0;
    while (1)
    {
      Name = property_getName(v4[v5]);
      if (Name)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:Name];
        v8 = NSSelectorFromString(v7);

        v9 = ([(PUIStylePickerSelectionChange *)self methodForSelector:v8])(self, v8);

        if (v9)
        {
          break;
        }
      }

      if (++v5 >= outCount)
      {
        goto LABEL_6;
      }
    }

    v10 = 1;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  free(v4);
  return v10;
}

@end