@interface SBIconViewContextMenuContext
- (BOOL)isEqual:(id)equal;
- (CGPoint)location;
- (SBIconView)iconView;
- (SBIconViewContextMenuContext)initWithIconView:(id)view location:(CGPoint)location;
- (UIContextMenuInteraction)contextMenuInteraction;
- (id)contextMenuNotificationUserInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SBIconViewContextMenuContext

- (SBIconViewContextMenuContext)initWithIconView:(id)view location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = SBIconViewContextMenuContext;
  v8 = [(SBIconViewContextMenuContext *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconView, viewCopy);
    icon = [viewCopy icon];
    nodeIdentifier = [icon nodeIdentifier];
    nodeIdentifier = v9->_nodeIdentifier;
    v9->_nodeIdentifier = nodeIdentifier;

    v9->_location.x = x;
    v9->_location.y = y;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSUUID *)identifier isEqual:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_iconView);
  v6 = [v4 initWithIconView:WeakRetained location:{self->_location.x, self->_location.y}];

  v7 = [(NSUUID *)self->_identifier copy];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSString *)self->_nodeIdentifier copy];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_iconView);
  v5 = [v3 appendObject:WeakRetained withName:@"_iconView"];

  v6 = [v3 appendObject:self->_identifier withName:@"_identifier"];
  v7 = [v3 appendPoint:@"_location" withName:{self->_location.x, self->_location.y}];
  build = [v3 build];

  return build;
}

- (id)contextMenuNotificationUserInfo
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary bs_setSafeObject:self->_nodeIdentifier forKey:@"iconViewNodeIdentifier"];
  [dictionary bs_setSafeObject:self->_identifier forKey:@"contextMenuIdentifier"];
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_location.x, self->_location.y}];
  [dictionary bs_setSafeObject:v4 forKey:@"contextMenuPresentationLocation"];

  return dictionary;
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_contextMenuInteraction);

  return WeakRetained;
}

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end