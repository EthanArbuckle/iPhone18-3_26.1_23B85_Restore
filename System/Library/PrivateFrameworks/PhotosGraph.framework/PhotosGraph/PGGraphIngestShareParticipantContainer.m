@interface PGGraphIngestShareParticipantContainer
- (BOOL)isFavorite;
- (BOOL)isHidden;
- (BOOL)isMe;
- (BOOL)isUserCreated;
- (NSDate)anniversaryDate;
- (NSDate)birthdayDate;
- (NSDate)potentialBirthdayDate;
- (NSDictionary)locationsByAddressTypes;
- (NSString)contactID;
- (NSString)fullName;
- (NSString)localIdentifier;
- (NSString)shareParticipantLocalIdentifier;
- (PGGraphIngestShareParticipantContainer)initWithShareParticipant:(id)a3 person:(id)a4;
- (unint64_t)ageCategory;
- (unint64_t)relationship;
- (unint64_t)sex;
@end

@implementation PGGraphIngestShareParticipantContainer

- (PGGraphIngestShareParticipantContainer)initWithShareParticipant:(id)a3 person:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PGGraphIngestShareParticipantContainer;
  v8 = [(PGGraphIngestShareParticipantContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGGraphIngestShareParticipantContainer *)v8 setShareParticipant:v6];
    [(PGGraphIngestShareParticipantContainer *)v9 setLinkedPersonIdentity:v7];
    [(PGGraphIngestShareParticipantContainer *)v9 setPersonIdentityFound:v7 != 0];
  }

  return v9;
}

- (NSDictionary)locationsByAddressTypes
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 locationsByAddressTypes];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (unint64_t)sex
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  v4 = [v3 sex];

  return v4;
}

- (unint64_t)ageCategory
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  v4 = [v3 ageCategory];

  return v4;
}

- (unint64_t)relationship
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  v4 = [v3 relationship];

  return v4;
}

- (NSDate)anniversaryDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 anniversaryDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)potentialBirthdayDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 potentialBirthdayDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)birthdayDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 birthdayDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isMe
{
  v2 = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  v3 = [v2 isCurrentUser];

  return v3;
}

- (BOOL)isUserCreated
{
  v3 = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (v3)
  {
    v4 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v5 = [v4 isUserCreated];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isHidden
{
  v3 = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (v3)
  {
    v4 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v5 = [v4 isHidden];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isFavorite
{
  v3 = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (v3)
  {
    v4 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v5 = [v4 isFavorite];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (NSString)shareParticipantLocalIdentifier
{
  v2 = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  v3 = [v2 localIdentifier];

  return v3;
}

- (NSString)contactID
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 contactID];
  }

  else
  {
    v4 = &stru_2843F5C58;
  }

  return v4;
}

- (NSString)localIdentifier
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 localIdentifier];
  }

  else
  {
    v4 = &stru_2843F5C58;
  }

  return v4;
}

- (NSString)fullName
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    v3 = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    v4 = [v3 fullName];
LABEL_5:

    goto LABEL_6;
  }

  v5 = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  v6 = [v5 nameComponents];

  if (v6)
  {
    v7 = MEMORY[0x277CCAC08];
    v3 = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
    v8 = [v3 nameComponents];
    v4 = [v7 localizedStringFromPersonNameComponents:v8 style:0 options:0];

    goto LABEL_5;
  }

  v4 = &stru_2843F5C58;
LABEL_6:

  return v4;
}

@end