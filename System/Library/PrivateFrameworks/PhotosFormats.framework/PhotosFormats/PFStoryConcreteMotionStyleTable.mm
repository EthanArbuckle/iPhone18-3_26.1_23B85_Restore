@interface PFStoryConcreteMotionStyleTable
- (PFStoryConcreteMotionStyleTable)initWithMotionStylesByColorGrade:(id)grade defaultFrequencies:(id)frequencies;
- (id)motionStylesForColorGrade:(id)grade songPace:(int64_t)pace;
@end

@implementation PFStoryConcreteMotionStyleTable

- (id)motionStylesForColorGrade:(id)grade songPace:(int64_t)pace
{
  v7 = self->_defaultFrequencies;
  v8 = [(NSDictionary *)self->_motionStylesByColorGrade objectForKeyedSubscript:grade];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:pace];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = v10;

      v7 = v11;
    }
  }

  return v7;
}

- (PFStoryConcreteMotionStyleTable)initWithMotionStylesByColorGrade:(id)grade defaultFrequencies:(id)frequencies
{
  gradeCopy = grade;
  frequenciesCopy = frequencies;
  v15.receiver = self;
  v15.super_class = PFStoryConcreteMotionStyleTable;
  v9 = [(PFStoryConcreteMotionStyleTable *)&v15 init];
  objc_storeStrong(&v9->_motionStylesByColorGrade, grade);
  objc_storeStrong(&v9->_defaultFrequencies, frequencies);
  if (!v9->_defaultFrequencies)
  {
    v10 = 4;
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
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