@interface REElementComplicationAction
- (BOOL)isEqual:(id)equal;
- (REElementComplicationAction)initWithSlotIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_performWithContext:(id)context;
@end

@implementation REElementComplicationAction

- (REElementComplicationAction)initWithSlotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REElementComplicationAction;
  v6 = [(REElementComplicationAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_slotIdentifier, identifier);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = REElementComplicationAction;
  v4 = [(REElementComplicationAction *)&v6 copy];
  objc_storeStrong(v4 + 3, self->_slotIdentifier);
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = REElementComplicationAction;
  v3 = [(REElementComplicationAction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" slot=%@", self->_slotIdentifier];

  return v4;
}

- (void)_performWithContext:(id)context
{
  delegate = [(REElementAction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(REElementAction *)self delegate];
    [delegate2 elementAction:self wantsToPerformTapActionForComplicationSlot:self->_slotIdentifier];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_slotIdentifier isEqual:equalCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end