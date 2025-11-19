@interface PXTabBadgeModel
- (void)performChanges:(id)a3;
- (void)setLocalizedString:(id)a3;
@end

@implementation PXTabBadgeModel

- (void)setLocalizedString:(id)a3
{
  v4 = a3;
  localizedString = self->_localizedString;
  if (localizedString != v4)
  {
    v9 = v4;
    v6 = [(NSString *)localizedString isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_localizedString;
      self->_localizedString = v7;

      [(PXTabBadgeModel *)self signalChange:1];
      v4 = v9;
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXTabBadgeModel;
  [(PXTabBadgeModel *)&v3 performChanges:a3];
}

@end