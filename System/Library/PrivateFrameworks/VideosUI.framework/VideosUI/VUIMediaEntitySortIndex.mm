@interface VUIMediaEntitySortIndex
- (VUIMediaEntitySortIndex)init;
- (VUIMediaEntitySortIndex)initWithTitle:(id)title startIndex:(unint64_t)index count:(unint64_t)count;
- (id)description;
@end

@implementation VUIMediaEntitySortIndex

- (VUIMediaEntitySortIndex)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntitySortIndex)initWithTitle:(id)title startIndex:(unint64_t)index count:(unint64_t)count
{
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = VUIMediaEntitySortIndex;
  v9 = [(VUIMediaEntitySortIndex *)&v13 init];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    v9->_startIndex = index;
    v9->_count = count;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = VUIMediaEntitySortIndex;
  v4 = [(VUIMediaEntitySortIndex *)&v18 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  title = [(VUIMediaEntitySortIndex *)self title];
  v7 = [v5 stringWithFormat:@"%@=%@", @"title", title];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntitySortIndex startIndex](self, "startIndex")}];
  v10 = [v8 stringWithFormat:@"%@=%@", @"startIndex", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntitySortIndex count](self, "count")}];
  v13 = [v11 stringWithFormat:@"%@=%@", @"count", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v14 stringWithFormat:@"<%@>", v15];

  return v16;
}

@end