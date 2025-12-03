@interface PRMutablePosterAmbientConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRMutablePosterAmbientConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterAmbientConfiguration alloc];
  supportedDataLayout = [(PRPosterAmbientConfiguration *)self supportedDataLayout];
  creationBehavior = [(PRPosterAmbientConfiguration *)self creationBehavior];
  editingBehavior = [(PRPosterAmbientConfiguration *)self editingBehavior];
  deletionBehavior = [(PRPosterAmbientConfiguration *)self deletionBehavior];
  galleryDisplayBehavior = [(PRPosterAmbientConfiguration *)self galleryDisplayBehavior];
  hidden = [(PRPosterAmbientConfiguration *)self hidden];
  LOBYTE(v17) = [(PRPosterAmbientConfiguration *)self needsAuthentication];
  v11 = [(PRPosterAmbientConfiguration *)v4 initWithSupportedDataLayout:supportedDataLayout creationBehavior:creationBehavior editingBehavior:editingBehavior deletionBehavior:deletionBehavior galleryDisplayBehavior:galleryDisplayBehavior isHidden:hidden needsAuthentication:v17 displayOrder:[(PRPosterAmbientConfiguration *)self displayOrder]];
  displayNameSystemSymbolName = [(PRPosterAmbientConfiguration *)self displayNameSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v11 setDisplayNameSystemSymbolName:displayNameSystemSymbolName];

  editingSystemSymbolName = [(PRPosterAmbientConfiguration *)self editingSystemSymbolName];
  [(PRPosterAmbientConfiguration *)v11 setEditingSystemSymbolName:editingSystemSymbolName];

  editingContentStyle = [(PRPosterAmbientConfiguration *)self editingContentStyle];
  [(PRPosterAmbientConfiguration *)v11 setEditingContentStyle:editingContentStyle];

  selfCopy = self;
  return selfCopy;
}

@end