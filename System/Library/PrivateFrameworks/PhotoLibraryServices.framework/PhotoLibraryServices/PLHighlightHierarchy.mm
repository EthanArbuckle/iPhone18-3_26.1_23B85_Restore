@interface PLHighlightHierarchy
- (PLHighlightHierarchy)init;
- (void)_addDayHighlight:(id)a3;
- (void)_addMoment:(id)a3;
- (void)addDayGroupHighlight:(id)a3;
- (void)addDayHighlight:(id)a3;
- (void)addMoment:(id)a3;
@end

@implementation PLHighlightHierarchy

- (void)addDayGroupHighlight:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_dayGroupHighlights containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_dayGroupHighlights addObject:v4];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 childDayGroupPhotosHighlights];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PLHighlightHierarchy *)self _addDayHighlight:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_addDayHighlight:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_dayHighlights containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_dayHighlights addObject:v4];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v4 moments];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PLHighlightHierarchy *)self _addMoment:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)addDayHighlight:(id)a3
{
  v5 = a3;
  v4 = [v5 parentDayGroupPhotosHighlight];
  if (v4)
  {
    [(PLHighlightHierarchy *)self addDayGroupHighlight:v4];
  }

  else
  {
    [(PLHighlightHierarchy *)self _addDayHighlight:v5];
  }
}

- (void)_addMoment:(id)a3
{
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0 && (-[NSMutableSet containsObject:](self->_moments, "containsObject:", v4) & 1) == 0)
  {
    [(NSMutableSet *)self->_moments addObject:v4];
  }
}

- (void)addMoment:(id)a3
{
  v5 = a3;
  v4 = [v5 highlight];
  if (v4)
  {
    [(PLHighlightHierarchy *)self addDayHighlight:v4];
  }

  else
  {
    [(PLHighlightHierarchy *)self _addMoment:v5];
  }
}

- (PLHighlightHierarchy)init
{
  v10.receiver = self;
  v10.super_class = PLHighlightHierarchy;
  v2 = [(PLHighlightHierarchy *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    moments = v2->_moments;
    v2->_moments = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    dayHighlights = v2->_dayHighlights;
    v2->_dayHighlights = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    dayGroupHighlights = v2->_dayGroupHighlights;
    v2->_dayGroupHighlights = v7;
  }

  return v2;
}

@end