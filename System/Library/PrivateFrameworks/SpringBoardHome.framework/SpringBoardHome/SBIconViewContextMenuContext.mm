@interface SBIconViewContextMenuContext
- (BOOL)isEqual:(id)a3;
- (CGPoint)location;
- (SBIconView)iconView;
- (SBIconViewContextMenuContext)initWithIconView:(id)a3 location:(CGPoint)a4;
- (UIContextMenuInteraction)contextMenuInteraction;
- (id)contextMenuNotificationUserInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SBIconViewContextMenuContext

- (SBIconViewContextMenuContext)initWithIconView:(id)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v16.receiver = self;
  v16.super_class = SBIconViewContextMenuContext;
  v8 = [(SBIconViewContextMenuContext *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconView, v7);
    v10 = [v7 icon];
    v11 = [v10 nodeIdentifier];
    nodeIdentifier = v9->_nodeIdentifier;
    v9->_nodeIdentifier = v11;

    v9->_location.x = x;
    v9->_location.y = y;
    v13 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v13;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSUUID *)identifier isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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
  v8 = [v3 build];

  return v8;
}

- (id)contextMenuNotificationUserInfo
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 bs_setSafeObject:self->_nodeIdentifier forKey:@"iconViewNodeIdentifier"];
  [v3 bs_setSafeObject:self->_identifier forKey:@"contextMenuIdentifier"];
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_location.x, self->_location.y}];
  [v3 bs_setSafeObject:v4 forKey:@"contextMenuPresentationLocation"];

  return v3;
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