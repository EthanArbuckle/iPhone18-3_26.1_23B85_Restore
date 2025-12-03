@interface WBSCyclerItemListRepresentation
- (BOOL)_tryToDeleteDescendant:(id)descendant;
- (BOOL)containsChildPassingTest:(id)test;
- (BOOL)containsDescendant:(id)descendant;
- (BOOL)isEquivalent:(id)equivalent;
- (WBSCyclerItemListRepresentation)initWithCoder:(id)coder;
- (WBSCyclerItemListRepresentation)initWithTitle:(id)title uniqueIdentifier:(id)identifier;
- (id)allDescendantsPassingTest:(id)test;
- (id)childAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descendantWithUniqueIdentifier:(id)identifier;
- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)to;
- (id)randomChildPassingTest:(id)test;
- (id)randomDescendantPassingTest:(id)test;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCyclerItemListRepresentation

- (WBSCyclerItemListRepresentation)initWithTitle:(id)title uniqueIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WBSCyclerItemListRepresentation;
  v4 = [(WBSCyclerItemRepresentation *)&v9 initWithTitle:title uniqueIdentifier:identifier];
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    children = v4->_children;
    v4->_children = array;

    v7 = v4;
  }

  return v4;
}

- (WBSCyclerItemListRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WBSCyclerItemListRepresentation;
  v5 = [(WBSCyclerItemRepresentation *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Children"];
    v12 = [v11 mutableCopy];
    children = v5->_children;
    v5->_children = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WBSCyclerItemListRepresentation;
  coderCopy = coder;
  [(WBSCyclerItemRepresentation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_children forKey:{@"Children", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [WBSCyclerItemListRepresentation alloc];
  title = [(WBSCyclerItemRepresentation *)self title];
  uniqueIdentifier = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v7 = [(WBSCyclerItemListRepresentation *)v4 initWithTitle:title uniqueIdentifier:uniqueIdentifier];

  extraAttributes = [(WBSCyclerItemRepresentation *)self extraAttributes];
  [(WBSCyclerItemRepresentation *)v7 setExtraAttributes:extraAttributes];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_children;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copy];
        [(WBSCyclerItemListRepresentation *)v7 addChild:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v7;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v14.receiver = self;
  v14.super_class = WBSCyclerItemListRepresentation;
  if ([(WBSCyclerItemRepresentation *)&v14 isEquivalent:equivalentCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equivalentCopy[5];
    v6 = [v5 count];
    if (v6 == [(NSMutableArray *)self->_children count])
    {
      if (v6)
      {
        v7 = 0;
        v8 = v6 - 1;
        do
        {
          v9 = [v5 objectAtIndexedSubscript:v7];
          v10 = [(NSMutableArray *)self->_children objectAtIndexedSubscript:v7];
          v11 = [v9 isEquivalent:v10];

          if (v11)
          {
            v12 = v8 == v7;
          }

          else
          {
            v12 = 1;
          }

          ++v7;
        }

        while (!v12);
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)to
{
  toCopy = to;
  v5 = toCopy[5];
  v6 = [v5 count];
  v14.receiver = self;
  v14.super_class = WBSCyclerItemListRepresentation;
  v7 = [(WBSCyclerItemRepresentation *)&v14 pairsOfItemsWithDifferingExtraAttributesComparedTo:toCopy];
  v8 = [v7 mutableCopy];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = [(NSMutableArray *)self->_children objectAtIndexedSubscript:i];
      v11 = [v5 objectAtIndexedSubscript:i];
      v12 = [v10 pairsOfItemsWithDifferingExtraAttributesComparedTo:v11];
      [v8 addObjectsFromArray:v12];
    }
  }

  return v8;
}

- (BOOL)containsChildPassingTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (testCopy[2](testCopy, *(*(&v10 + 1) + 8 * i)))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsDescendant:(id)descendant
{
  v16 = *MEMORY[0x1E69E9840];
  descendantCopy = descendant;
  if ([(WBSCyclerItemListRepresentation *)self containsChild:descendantCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_children;
    v5 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 containsDescendant:{descendantCopy, v11}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }

        v5 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v5;
}

- (id)childAtIndex:(unint64_t)index
{
  if ([(WBSCyclerItemListRepresentation *)self numberOfChildren]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_children objectAtIndex:index];
  }

  return v5;
}

- (id)descendantWithUniqueIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  uniqueIdentifier = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v6 = [uniqueIdentifier isEqualToString:identifierCopy];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_children;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          uniqueIdentifier2 = [v13 uniqueIdentifier];
          v15 = [uniqueIdentifier2 isEqualToString:identifierCopy];

          if (v15)
          {
            v16 = v13;
LABEL_15:
            selfCopy = v16;

            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 descendantWithUniqueIdentifier:identifierCopy];
            if (v16)
            {
              goto LABEL_15;
            }
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_16:

  return selfCopy;
}

- (id)randomDescendantPassingTest:(id)test
{
  v3 = [(WBSCyclerItemListRepresentation *)self allDescendantsPassingTest:test];
  if ([v3 count])
  {
    v4 = [WBSCyclerRandomnessUtilities randomElementOfArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)randomChildPassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (testCopy[2](testCopy, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)allDescendantsPassingTest:(id)test
{
  v19 = *MEMORY[0x1E69E9840];
  testCopy = test;
  array = [MEMORY[0x1E695DF70] array];
  if (testCopy[2](testCopy, self))
  {
    [array addObject:self];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v7 = [(WBSCyclerItemListRepresentation *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (testCopy[2](testCopy, v11))
        {
          [array addObject:{v11, v14}];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(WBSCyclerItemListRepresentation *)v11 allDescendantsPassingTest:testCopy];
          [array addObjectsFromArray:v12];
        }
      }

      v8 = [(WBSCyclerItemListRepresentation *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

uint64_t __55__WBSCyclerItemListRepresentation_randomListDescendant__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __58__WBSCyclerItemListRepresentation_randomProfileDescendant__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_tryToDeleteDescendant:(id)descendant
{
  v18 = *MEMORY[0x1E69E9840];
  descendantCopy = descendant;
  if ([(WBSCyclerItemListRepresentation *)self containsChild:descendantCopy])
  {
    [(WBSCyclerItemListRepresentation *)self deleteChild:descendantCopy];
LABEL_14:
    v11 = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_children;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 _tryToDeleteDescendant:{descendantCopy, v13}])
          {

            goto LABEL_14;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

  return v11;
}

@end