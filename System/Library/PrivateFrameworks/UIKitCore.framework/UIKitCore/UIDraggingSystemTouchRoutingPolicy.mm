@interface UIDraggingSystemTouchRoutingPolicy
- (UIDraggingSystemTouchRoutingPolicy)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDraggingSystemTouchRoutingPolicy

- (UIDraggingSystemTouchRoutingPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = UIDraggingSystemTouchRoutingPolicy;
  v5 = [(UIDraggingSystemTouchRoutingPolicy *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{v8, objc_opt_class(), v6, v7, 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier"];
    contextIDsToAlwaysSendTouchesByDisplayIdentifier = v5->_contextIDsToAlwaysSendTouchesByDisplayIdentifier;
    v5->_contextIDsToAlwaysSendTouchesByDisplayIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{v6, v7, 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"contextIDsToExcludeFromHitTesting"];
    contextIDsToExcludeFromHitTesting = v5->_contextIDsToExcludeFromHitTesting;
    v5->_contextIDsToExcludeFromHitTesting = v13;

    v5->_hitTestingDisabled = [coderCopy decodeBoolForKey:@"hitTestingDisabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contextIDsToAlwaysSendTouchesByDisplayIdentifier = self->_contextIDsToAlwaysSendTouchesByDisplayIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contextIDsToAlwaysSendTouchesByDisplayIdentifier forKey:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier"];
  [coderCopy encodeObject:self->_contextIDsToExcludeFromHitTesting forKey:@"contextIDsToExcludeFromHitTesting"];
  [coderCopy encodeBool:self->_hitTestingDisabled forKey:@"hitTestingDisabled"];
}

- (id)description
{
  _ui_descriptionBuilder = [self _ui_descriptionBuilder];
  if (self->_contextIDsToAlwaysSendTouchesByDisplayIdentifier)
  {
    contextIDsToAlwaysSendTouchesByDisplayIdentifier = [(UIDraggingSystemTouchRoutingPolicy *)self contextIDsToAlwaysSendTouchesByDisplayIdentifier];
    v5 = [_ui_descriptionBuilder appendName:@"contextIDsToAlwaysSendTouchesByDisplayIdentifier" object:contextIDsToAlwaysSendTouchesByDisplayIdentifier];
  }

  if (self->_contextIDsToExcludeFromHitTesting)
  {
    contextIDsToExcludeFromHitTesting = [(UIDraggingSystemTouchRoutingPolicy *)self contextIDsToExcludeFromHitTesting];
    v7 = [_ui_descriptionBuilder appendName:@"contextIDsToExcludeFromHitTesting" object:contextIDsToExcludeFromHitTesting];
  }

  v8 = [_ui_descriptionBuilder appendName:@"hitTestingDisabled" BOOLValue:{-[UIDraggingSystemTouchRoutingPolicy isHitTestingDisabled](self, "isHitTestingDisabled")}];
  string = [_ui_descriptionBuilder string];

  return string;
}

@end