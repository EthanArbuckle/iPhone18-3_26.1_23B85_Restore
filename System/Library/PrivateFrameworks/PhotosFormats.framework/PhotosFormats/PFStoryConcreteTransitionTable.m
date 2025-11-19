@interface PFStoryConcreteTransitionTable
- (PFStoryConcreteTransitionTable)initWithTransitionsByColorGrade:(id)a3 defaultFrequencies:(id)a4;
- (id)transitionsForColorGrade:(id)a3 songPace:(int64_t)a4;
@end

@implementation PFStoryConcreteTransitionTable

- (id)transitionsForColorGrade:(id)a3 songPace:(int64_t)a4
{
  v7 = self->_defaultFrequencies;
  v8 = [(NSDictionary *)self->_transitionsByColorGrade objectForKeyedSubscript:a3];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = v10;

      v7 = v11;
    }
  }

  return v7;
}

- (PFStoryConcreteTransitionTable)initWithTransitionsByColorGrade:(id)a3 defaultFrequencies:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PFStoryConcreteTransitionTable;
  v9 = [(PFStoryConcreteTransitionTable *)&v15 init];
  objc_storeStrong(&v9->_transitionsByColorGrade, a3);
  objc_storeStrong(&v9->_defaultFrequencies, a4);
  if (!v9->_defaultFrequencies)
  {
    v10 = 9;
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
    do
    {
      [v11 addObject:&unk_1F2AAADF8];
      --v10;
    }

    while (v10);
    v12 = [v11 copy];

    defaultFrequencies = v9->_defaultFrequencies;
    v9->_defaultFrequencies = v12;
  }

  return v9;
}

@end