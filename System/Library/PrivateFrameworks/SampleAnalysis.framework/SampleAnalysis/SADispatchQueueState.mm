@interface SADispatchQueueState
- (id)debugDescription;
@end

@implementation SADispatchQueueState

- (id)debugDescription
{
  threadState = [(SARecipeState *)self threadState];
  dispatchQueue = [threadState dispatchQueue];

  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = [dispatchQueue debugDescription];
  thread = [(SARecipeState *)self thread];
  v8 = [thread debugDescription];
  v9 = [v5 initWithFormat:@"%@ (%@)", v6, v8];

  threadState2 = [(SARecipeState *)self threadState];
  startTimestamp = [threadState2 startTimestamp];
  endTimestamp = [threadState2 endTimestamp];

  startSampleIndex = [threadState2 startSampleIndex];
  if (startTimestamp == endTimestamp)
  {
    startTimestamp2 = [threadState2 startTimestamp];
    v16 = [startTimestamp2 debugDescription];
    [v9 appendFormat:@" at sample index %lu\n%@", startSampleIndex, v16];
  }

  else
  {
    endSampleIndex = [threadState2 endSampleIndex];
    startTimestamp2 = [threadState2 startTimestamp];
    v16 = [startTimestamp2 debugDescription];
    endTimestamp2 = [threadState2 endTimestamp];
    v18 = [endTimestamp2 debugDescription];
    [v9 appendFormat:@" at sample indexes %lu-%lu\nstart:%@\n  end:%@", startSampleIndex, endSampleIndex, v16, v18];
  }

  v19 = [v9 copy];

  return v19;
}

@end