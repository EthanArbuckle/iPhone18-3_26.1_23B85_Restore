@interface PRMutablePosterAmbientConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRMutablePosterAmbientConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterAmbientConfiguration alloc];
  v5 = [(PRPosterAmbientConfiguration *)self supportedDataLayout];
  v6 = [(PRPosterAmbientConfiguration *)self creationBehavior];
  v7 = [(PRPosterAmbientConfiguration *)self editingBehavior];
  v8 = [(PRPosterAmbientConfiguration *)self deletionBehavior];
  v9 = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior];
  v10 = [(PRPosterAmbientConfiguration *)self hidden];
  LOBYTE(v17) = [(PRPosterAmbientConfiguration *)self needsAuthentication];
  v11 = [(PRPosterAmbientConfiguration *)v4 initWithSupportedDataLayout:v5 creationBehavior:v6 editingBehavior:v7 deletionBehavior:v8 galleryDisplayBehavior:v9 isHidden:v10 needsAuthentication:v17 displayOrder:[(PRPosterAmbientConfiguration *)self displayOrder]];
  v12 = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:v12];

  v13 = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v11 setEditingSystemSymbolName:v13];

  v14 = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [(PRPosterAmbientConfiguration *)v11 setEditingContentStyle:v14];

  v15 = self;
  return v15;
}

@end