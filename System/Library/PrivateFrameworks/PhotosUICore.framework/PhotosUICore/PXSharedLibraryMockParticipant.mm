@interface PXSharedLibraryMockParticipant
- (NSString)description;
- (PXSharedLibraryMockParticipant)init;
@end

@implementation PXSharedLibraryMockParticipant

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  emailAddress = self->_emailAddress;
  nameComponents = self->_nameComponents;
  status = self->_status;
  if (status > 4)
  {
    v8 = @"Invalid";
  }

  else
  {
    v8 = off_1E7738978[status];
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@:%p, emailAddress: %@, nameComponents: %@, status: %@>", v4, self, emailAddress, nameComponents, v9];

  return v10;
}

- (PXSharedLibraryMockParticipant)init
{
  v7.receiver = self;
  v7.super_class = PXSharedLibraryMockParticipant;
  v2 = [(PXSharedLibraryMockParticipant *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    localIdentifier = v2->_localIdentifier;
    v2->_localIdentifier = uUIDString;
  }

  return v2;
}

@end