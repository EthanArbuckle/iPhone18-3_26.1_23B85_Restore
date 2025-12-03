@interface PLHighlightHierarchy
- (PLHighlightHierarchy)init;
- (void)_addDayHighlight:(id)highlight;
- (void)_addMoment:(id)moment;
- (void)addDayGroupHighlight:(id)highlight;
- (void)addDayHighlight:(id)highlight;
- (void)addMoment:(id)moment;
@end

@implementation PLHighlightHierarchy

- (void)addDayGroupHighlight:(id)highlight
{
  v15 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  if (([(NSMutableSet *)self->_dayGroupHighlights containsObject:highlightCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_dayGroupHighlights addObject:highlightCopy];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    childDayGroupPhotosHighlights = [highlightCopy childDayGroupPhotosHighlights];
    v6 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(childDayGroupPhotosHighlights);
          }

          [(PLHighlightHierarchy *)self _addDayHighlight:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [childDayGroupPhotosHighlights countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_addDayHighlight:(id)highlight
{
  v15 = *MEMORY[0x1E69E9840];
  highlightCopy = highlight;
  if (([(NSMutableSet *)self->_dayHighlights containsObject:highlightCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_dayHighlights addObject:highlightCopy];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    moments = [highlightCopy moments];
    v6 = [moments countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(moments);
          }

          [(PLHighlightHierarchy *)self _addMoment:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [moments countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)addDayHighlight:(id)highlight
{
  highlightCopy = highlight;
  parentDayGroupPhotosHighlight = [highlightCopy parentDayGroupPhotosHighlight];
  if (parentDayGroupPhotosHighlight)
  {
    [(PLHighlightHierarchy *)self addDayGroupHighlight:parentDayGroupPhotosHighlight];
  }

  else
  {
    [(PLHighlightHierarchy *)self _addDayHighlight:highlightCopy];
  }
}

- (void)_addMoment:(id)moment
{
  momentCopy = moment;
  if (([momentCopy isDeleted] & 1) == 0 && (-[NSMutableSet containsObject:](self->_moments, "containsObject:", momentCopy) & 1) == 0)
  {
    [(NSMutableSet *)self->_moments addObject:momentCopy];
  }
}

- (void)addMoment:(id)moment
{
  momentCopy = moment;
  highlight = [momentCopy highlight];
  if (highlight)
  {
    [(PLHighlightHierarchy *)self addDayHighlight:highlight];
  }

  else
  {
    [(PLHighlightHierarchy *)self _addMoment:momentCopy];
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