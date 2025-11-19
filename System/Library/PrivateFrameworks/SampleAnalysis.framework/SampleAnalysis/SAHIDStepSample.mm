@interface SAHIDStepSample
- (id)debugDescription;
@end

@implementation SAHIDStepSample

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SATask *)self->_task debugDescription];
  startSampleIndex = self->_startSampleIndex;
  endSampleIndex = self->_endSampleIndex;
  threadId = self->_threadId;
  v8 = [(SATimestamp *)self->_startTimestamp debugDescription];
  v9 = [(SATimestamp *)self->_endTimestamp debugDescription];
  v10 = [v3 initWithFormat:@"hid step sample %@ thread 0x%llx, %lu-%lu, %@-%@", v4, threadId, startSampleIndex, endSampleIndex, v8, v9];

  return v10;
}

@end