@interface GQDTTextCell
- (void)dealloc;
@end

@implementation GQDTTextCell

- (void)dealloc
{
  mStringValue = self->mStringValue;
  if (mStringValue)
  {
    CFRelease(mStringValue);
  }

  v4.receiver = self;
  v4.super_class = GQDTTextCell;
  [(GQDTCell *)&v4 dealloc];
}

@end