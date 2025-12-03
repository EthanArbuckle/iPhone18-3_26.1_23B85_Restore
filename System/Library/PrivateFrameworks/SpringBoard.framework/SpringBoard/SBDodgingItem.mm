@interface SBDodgingItem
- (BOOL)isEqual:(id)equal;
- (CGPoint)center;
- (CGSize)containerSize;
- (CGSize)size;
- (SBDodgingItem)initWithUniqueIdentifier:(id)identifier view:(id)view delegate:(id)delegate dodgingResolverViewController:(id)controller;
- (SBDodgingItemDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SBDodgingItem

- (SBDodgingItem)initWithUniqueIdentifier:(id)identifier view:(id)view delegate:(id)delegate dodgingResolverViewController:(id)controller
{
  identifierCopy = identifier;
  viewCopy = view;
  delegateCopy = delegate;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = SBDodgingItem;
  v15 = [(SBDodgingItem *)&v19 init];
  if (v15)
  {
    if (identifierCopy)
    {
      if (delegateCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBDodgingItem initWithUniqueIdentifier:a2 view:v15 delegate:? dodgingResolverViewController:?];
      if (delegateCopy)
      {
LABEL_4:
        if (controllerCopy)
        {
LABEL_5:
          v16 = [identifierCopy copy];
          uniqueIdentifier = v15->_uniqueIdentifier;
          v15->_uniqueIdentifier = v16;

          objc_storeStrong(&v15->_view, view);
          objc_storeWeak(&v15->_delegate, delegateCopy);
          objc_storeStrong(&v15->_dodgingResolverViewController, controller);
          goto LABEL_6;
        }

LABEL_9:
        [SBDodgingItem initWithUniqueIdentifier:view:delegate:dodgingResolverViewController:];
        goto LABEL_5;
      }
    }

    [SBDodgingItem initWithUniqueIdentifier:a2 view:v15 delegate:? dodgingResolverViewController:?];
    if (controllerCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = self->_uniqueIdentifier;
  view = self->_view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v4 initWithUniqueIdentifier:uniqueIdentifier view:view delegate:WeakRetained dodgingResolverViewController:self->_dodgingResolverViewController];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier = [equalCopy uniqueIdentifier];
    v6 = [uniqueIdentifier isEqualToString:self->_uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SBDodgingItem;
  v3 = [(SBDodgingItem *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_uniqueIdentifier];

  return v4;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBDodgingItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 view:(uint64_t)a2 delegate:dodgingResolverViewController:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDodgingItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
}

- (void)initWithUniqueIdentifier:(uint64_t)a1 view:(uint64_t)a2 delegate:dodgingResolverViewController:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDodgingItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)initWithUniqueIdentifier:view:delegate:dodgingResolverViewController:.cold.3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDodgingItem initWithUniqueIdentifier:view:delegate:dodgingResolverViewController:]"];
  [v0 handleFailureInFunction:v1 file:@"SBDodgingItem.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"dodgingResolverViewController"}];
}

@end