@interface UIDraggingSystemTouchRoutingPolicy
- (UIDraggingSystemTouchRoutingPolicy)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDraggingSystemTouchRoutingPolicy

- (UIDraggingSystemTouchRoutingPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UIDraggingSystemTouchRoutingPolicy;
  v5 = [(UIDraggingSystemTouchRoutingPolicy *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{v8, objc_opt_class(), v6, v7, 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier"];
    contextIDsToAlwaysSendTouchesByDisplayIdentifier = v5->_contextIDsToAlwaysSendTouchesByDisplayIdentifier;
    v5->_contextIDsToAlwaysSendTouchesByDisplayIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{v6, v7, 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"contextIDsToExcludeFromHitTesting"];
    contextIDsToExcludeFromHitTesting = v5->_contextIDsToExcludeFromHitTesting;
    v5->_contextIDsToExcludeFromHitTesting = v13;

    v5->_hitTestingDisabled = [v4 decodeBoolForKey:@"hitTestingDisabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contextIDsToAlwaysSendTouchesByDisplayIdentifier = self->_contextIDsToAlwaysSendTouchesByDisplayIdentifier;
  v5 = a3;
  [v5 encodeObject:contextIDsToAlwaysSendTouchesByDisplayIdentifier forKey:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier"];
  [v5 encodeObject:self->_contextIDsToExcludeFromHitTesting forKey:@"contextIDsToExcludeFromHitTesting"];
  [v5 encodeBool:self->_hitTestingDisabled forKey:@"hitTestingDisabled"];
}

- (id)description
{
  v3 = [self _ui_descriptionBuilder];
  if (self->_contextIDsToAlwaysSendTouchesByDisplayIdentifier)
  {
    v4 = [(UIDraggingSystemTouchRoutingPolicy *)self contextIDsToAlwaysSendTouchesByDisplayIdentifier];
    v5 = [v3 appendName:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier" object:v4];
  }

  if (self->_contextIDsToExcludeFromHitTesting)
  {
    v6 = [(UIDraggingSystemTouchRoutingPolicy *)self contextIDsToExcludeFromHitTesting];
    v7 = [v3 appendName:@"contextIDsToExcludeFromHitTesting" object:v6];
  }

  v8 = [v3 appendName:@"hitTestingDisabled" BOOLValue:{-[UIDraggingSystemTouchRoutingPolicy isHitTestingDisabled](self, "isHitTestingDisabled")}];
  v9 = [v3 string];

  return v9;
}

@end