@interface GQDWPColumns
- (void)dealloc;
@end

@implementation GQDWPColumns

- (void)dealloc
{
  mColumns = self->mColumns;
  if (mColumns)
  {
    CFRelease(mColumns);
  }

  v4.receiver = self;
  v4.super_class = GQDWPColumns;
  [(GQDWPColumns *)&v4 dealloc];
}

@end