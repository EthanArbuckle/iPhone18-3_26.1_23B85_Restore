@interface PXTabBadgeModel
- (void)performChanges:(id)changes;
- (void)setLocalizedString:(id)string;
@end

@implementation PXTabBadgeModel

- (void)setLocalizedString:(id)string
{
  stringCopy = string;
  localizedString = self->_localizedString;
  if (localizedString != stringCopy)
  {
    v9 = stringCopy;
    v6 = [(NSString *)localizedString isEqualToString:stringCopy];
    stringCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_localizedString;
      self->_localizedString = v7;

      [(PXTabBadgeModel *)self signalChange:1];
      stringCopy = v9;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXTabBadgeModel;
  [(PXTabBadgeModel *)&v3 performChanges:changes];
}

@end