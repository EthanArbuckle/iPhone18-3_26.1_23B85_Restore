@interface PXPeoplePickerMockDataSourceManager
- (id)createInitialDataSource;
@end

@implementation PXPeoplePickerMockDataSourceManager

- (id)createInitialDataSource
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = [[PXPeoplePickerMockPerson alloc] initWithLocalIdentifier:@"1" displayName:@"Christina"];
  v3 = [[PXPeoplePickerMockPerson alloc] initWithLocalIdentifier:@"2" displayName:@"Jessica"];
  v4 = [[PXPeoplePickerMockPerson alloc] initWithLocalIdentifier:@"3" displayName:@"Sally"];
  v5 = [[PXPeoplePickerMockPerson alloc] initWithLocalIdentifier:@"4" displayName:@"Anne"];
  v6 = [PXPeoplePickerMockDataSource alloc];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [(PXPeoplePickerMockDataSource *)v6 initWithMocks:v7];

  return v8;
}

@end