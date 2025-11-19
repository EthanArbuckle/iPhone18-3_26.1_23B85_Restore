@interface STUniquedManagedObjectDelta
- (STUniquedManagedObjectDelta)initWithUniqueIdentifier:(id)a3;
- (void)deleted;
- (void)inserted;
- (void)removePropertyWithName:(id)a3;
- (void)updatedWithProperties:(id)a3;
@end

@implementation STUniquedManagedObjectDelta

- (STUniquedManagedObjectDelta)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STUniquedManagedObjectDelta;
  v5 = [(STUniquedManagedObjectDelta *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (void)inserted
{
  updatedProperties = self->_updatedProperties;
  self->_changeType = 1;
  self->_updatedProperties = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)deleted
{
  updatedProperties = self->_updatedProperties;
  self->_changeType = 3;
  self->_updatedProperties = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)updatedWithProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_changeType != 1)
  {
    self->_changeType = 2;
    updatedProperties = self->_updatedProperties;
    v11 = v5;
    if (updatedProperties)
    {
      v7 = [(NSMutableSet *)updatedProperties setByAddingObjectsFromSet:v5];
      v8 = [v7 mutableCopy];
      v9 = self->_updatedProperties;
      self->_updatedProperties = v8;
    }

    else
    {
      v10 = [v5 mutableCopy];
      v7 = self->_updatedProperties;
      self->_updatedProperties = v10;
    }

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)removePropertyWithName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_updatedProperties;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(NSMutableSet *)self->_updatedProperties removeObject:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

@end