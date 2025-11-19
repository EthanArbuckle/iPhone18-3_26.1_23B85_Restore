@interface PXSharedLibraryParticipantAddTableViewCell
- (PXSharedLibraryParticipantAddTableViewCell)initWithCoder:(id)a3;
- (PXSharedLibraryParticipantAddTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PXSharedLibraryParticipantAddTableViewCell

- (PXSharedLibraryParticipantAddTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for SharedLibraryParticipantAddTableViewCell();
  v7 = [(PXSharedLibraryParticipantAddTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];

  v8 = v7;
  sub_1A524D314();

  return v8;
}

- (PXSharedLibraryParticipantAddTableViewCell)initWithCoder:(id)a3
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

@end