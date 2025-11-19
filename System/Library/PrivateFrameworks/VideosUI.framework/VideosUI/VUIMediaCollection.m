@interface VUIMediaCollection
- (id)description;
@end

@implementation VUIMediaCollection

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMediaCollection;
  v4 = [(VUIMediaEntity *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaCollection *)self addedToDate];
  v7 = [v5 stringWithFormat:@"%@=%@", @"addedToDate", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaCollection *)self mediaItemCount];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaItemCount", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end