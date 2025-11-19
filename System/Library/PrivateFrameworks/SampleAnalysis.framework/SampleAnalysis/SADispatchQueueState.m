@interface SADispatchQueueState
- (id)debugDescription;
@end

@implementation SADispatchQueueState

- (id)debugDescription
{
  v3 = [(SARecipeState *)self threadState];
  v4 = [v3 dispatchQueue];

  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = [v4 debugDescription];
  v7 = [(SARecipeState *)self thread];
  v8 = [v7 debugDescription];
  v9 = [v5 initWithFormat:@"%@ (%@)", v6, v8];

  v10 = [(SARecipeState *)self threadState];
  v11 = [v10 startTimestamp];
  v12 = [v10 endTimestamp];

  v13 = [v10 startSampleIndex];
  if (v11 == v12)
  {
    v15 = [v10 startTimestamp];
    v16 = [v15 debugDescription];
    [v9 appendFormat:@" at sample index %lu\n%@", v13, v16];
  }

  else
  {
    v14 = [v10 endSampleIndex];
    v15 = [v10 startTimestamp];
    v16 = [v15 debugDescription];
    v17 = [v10 endTimestamp];
    v18 = [v17 debugDescription];
    [v9 appendFormat:@" at sample indexes %lu-%lu\nstart:%@\n  end:%@", v13, v14, v16, v18];
  }

  v19 = [v9 copy];

  return v19;
}

@end