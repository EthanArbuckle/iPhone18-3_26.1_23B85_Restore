@interface _MFWholeMessageSection
- (void)dealloc;
@end

@implementation _MFWholeMessageSection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFWholeMessageSection;
  [(_MFWholeMessageSection *)&v2 dealloc];
}

@end