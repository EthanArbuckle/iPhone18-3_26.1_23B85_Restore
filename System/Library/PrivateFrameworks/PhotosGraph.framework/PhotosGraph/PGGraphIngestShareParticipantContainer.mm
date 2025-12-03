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
- (PGGraphIngestShareParticipantContainer)initWithShareParticipant:(id)participant person:(id)person;
- (unint64_t)ageCategory;
- (unint64_t)relationship;
- (unint64_t)sex;
@end

@implementation PGGraphIngestShareParticipantContainer

- (PGGraphIngestShareParticipantContainer)initWithShareParticipant:(id)participant person:(id)person
{
  participantCopy = participant;
  personCopy = person;
  v11.receiver = self;
  v11.super_class = PGGraphIngestShareParticipantContainer;
  v8 = [(PGGraphIngestShareParticipantContainer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGGraphIngestShareParticipantContainer *)v8 setShareParticipant:participantCopy];
    [(PGGraphIngestShareParticipantContainer *)v9 setLinkedPersonIdentity:personCopy];
    [(PGGraphIngestShareParticipantContainer *)v9 setPersonIdentityFound:personCopy != 0];
  }

  return v9;
}

- (NSDictionary)locationsByAddressTypes
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    locationsByAddressTypes = [linkedPersonIdentity locationsByAddressTypes];
  }

  else
  {
    locationsByAddressTypes = MEMORY[0x277CBEC10];
  }

  return locationsByAddressTypes;
}

- (unint64_t)sex
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  v4 = [linkedPersonIdentity sex];

  return v4;
}

- (unint64_t)ageCategory
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  ageCategory = [linkedPersonIdentity ageCategory];

  return ageCategory;
}

- (unint64_t)relationship
{
  if (![(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    return 0;
  }

  linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
  relationship = [linkedPersonIdentity relationship];

  return relationship;
}

- (NSDate)anniversaryDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    anniversaryDate = [linkedPersonIdentity anniversaryDate];
  }

  else
  {
    anniversaryDate = 0;
  }

  return anniversaryDate;
}

- (NSDate)potentialBirthdayDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    potentialBirthdayDate = [linkedPersonIdentity potentialBirthdayDate];
  }

  else
  {
    potentialBirthdayDate = 0;
  }

  return potentialBirthdayDate;
}

- (NSDate)birthdayDate
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    birthdayDate = [linkedPersonIdentity birthdayDate];
  }

  else
  {
    birthdayDate = 0;
  }

  return birthdayDate;
}

- (BOOL)isMe
{
  shareParticipant = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  isCurrentUser = [shareParticipant isCurrentUser];

  return isCurrentUser;
}

- (BOOL)isUserCreated
{
  personIdentityFound = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (personIdentityFound)
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    isUserCreated = [linkedPersonIdentity isUserCreated];

    LOBYTE(personIdentityFound) = isUserCreated;
  }

  return personIdentityFound;
}

- (BOOL)isHidden
{
  personIdentityFound = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (personIdentityFound)
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    isHidden = [linkedPersonIdentity isHidden];

    LOBYTE(personIdentityFound) = isHidden;
  }

  return personIdentityFound;
}

- (BOOL)isFavorite
{
  personIdentityFound = [(PGGraphIngestShareParticipantContainer *)self personIdentityFound];
  if (personIdentityFound)
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    isFavorite = [linkedPersonIdentity isFavorite];

    LOBYTE(personIdentityFound) = isFavorite;
  }

  return personIdentityFound;
}

- (NSString)shareParticipantLocalIdentifier
{
  shareParticipant = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  localIdentifier = [shareParticipant localIdentifier];

  return localIdentifier;
}

- (NSString)contactID
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    contactID = [linkedPersonIdentity contactID];
  }

  else
  {
    contactID = &stru_2843F5C58;
  }

  return contactID;
}

- (NSString)localIdentifier
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    localIdentifier = [linkedPersonIdentity localIdentifier];
  }

  else
  {
    localIdentifier = &stru_2843F5C58;
  }

  return localIdentifier;
}

- (NSString)fullName
{
  if ([(PGGraphIngestShareParticipantContainer *)self personIdentityFound])
  {
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self linkedPersonIdentity];
    fullName = [linkedPersonIdentity fullName];
LABEL_5:

    goto LABEL_6;
  }

  shareParticipant = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
  nameComponents = [shareParticipant nameComponents];

  if (nameComponents)
  {
    v7 = MEMORY[0x277CCAC08];
    linkedPersonIdentity = [(PGGraphIngestShareParticipantContainer *)self shareParticipant];
    nameComponents2 = [linkedPersonIdentity nameComponents];
    fullName = [v7 localizedStringFromPersonNameComponents:nameComponents2 style:0 options:0];

    goto LABEL_5;
  }

  fullName = &stru_2843F5C58;
LABEL_6:

  return fullName;
}

@end