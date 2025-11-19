@interface SANewThreadInfo
- (id)debugDescription;
@end

@implementation SANewThreadInfo

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  newTid = self->_newTid;
  oldPid = self->_oldPid;
  newPid = self->_newPid;
  v7 = [(SATimestamp *)self->_timestamp debugDescription];
  v8 = [v3 initWithFormat:@"[%d] -> [%d] 0x%llx @ %@", oldPid, newPid, newTid, v7];

  return v8;
}

@end