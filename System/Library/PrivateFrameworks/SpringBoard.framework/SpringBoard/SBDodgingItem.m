@interface SBDodgingItem
- (BOOL)isEqual:(id)a3;
- (CGPoint)center;
- (CGSize)containerSize;
- (CGSize)size;
- (SBDodgingItem)initWithUniqueIdentifier:(id)a3 view:(id)a4 delegate:(id)a5 dodgingResolverViewController:(id)a6;
- (SBDodgingItemDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SBDodgingItem

- (SBDodgingItem)initWithUniqueIdentifier:(id)a3 view:(id)a4 delegate:(id)a5 dodgingResolverViewController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = SBDodgingItem;
  v15 = [(SBDodgingItem *)&v19 init];
  if (v15)
  {
    if (v11)
    {
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBDodgingItem initWithUniqueIdentifier:a2 view:v15 delegate:? dodgingResolverViewController:?];
      if (v13)
      {
LABEL_4:
        if (v14)
        {
LABEL_5:
          v16 = [v11 copy];
          uniqueIdentifier = v15->_uniqueIdentifier;
          v15->_uniqueIdentifier = v16;

          objc_storeStrong(&v15->_view, a4);
          objc_storeWeak(&v15->_delegate, v13);
          objc_storeStrong(&v15->_dodgingResolverViewController, a6);
          goto LABEL_6;
        }

LABEL_9:
        [SBDodgingItem initWithUniqueIdentifier:view:delegate:dodgingResolverViewController:];
        goto LABEL_5;
      }
    }

    [SBDodgingItem initWithUniqueIdentifier:a2 view:v15 delegate:? dodgingResolverViewController:?];
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  uniqueIdentifier = self->_uniqueIdentifier;
  view = self->_view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v4 initWithUniqueIdentifier:uniqueIdentifier view:view delegate:WeakRetained dodgingResolverViewController:self->_dodgingResolverViewController];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uniqueIdentifier];
    v6 = [v5 isEqualToString:self->_uniqueIdentifier];
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