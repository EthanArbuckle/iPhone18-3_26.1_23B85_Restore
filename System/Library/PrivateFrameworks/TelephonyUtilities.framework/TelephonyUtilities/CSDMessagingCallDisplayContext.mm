@interface CSDMessagingCallDisplayContext
- (BOOL)isEqual:(id)equal;
- (CSDMessagingCallDisplayContext)initWithCallDisplayContext:(id)context;
- (TUCallDisplayContext)displayContext;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCallDisplayContext

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  protoPersonNameComponents = self->_protoPersonNameComponents;
  if (protoPersonNameComponents)
  {
    dictionaryRepresentation = [(CSDMessagingPersonNameComponents *)protoPersonNameComponents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"protoPersonNameComponents"];
  }

  suggestedName = self->_suggestedName;
  if (suggestedName)
  {
    [v4 setObject:suggestedName forKey:@"suggestedName"];
  }

  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKey:@"label"];
  }

  companyName = self->_companyName;
  if (companyName)
  {
    [v4 setObject:companyName forKey:@"companyName"];
  }

  mapName = self->_mapName;
  if (mapName)
  {
    [v4 setObject:mapName forKey:@"mapName"];
  }

  location = self->_location;
  if (location)
  {
    [v4 setObject:location forKey:@"location"];
  }

  contactName = self->_contactName;
  if (contactName)
  {
    [v4 setObject:contactName forKey:@"contactName"];
  }

  contactLabel = self->_contactLabel;
  if (contactLabel)
  {
    [v4 setObject:contactLabel forKey:@"contactLabel"];
  }

  callDirectoryLabel = self->_callDirectoryLabel;
  if (callDirectoryLabel)
  {
    [v4 setObject:callDirectoryLabel forKey:@"callDirectoryLabel"];
  }

  callDirectoryLocalizedExtensionContainingAppName = self->_callDirectoryLocalizedExtensionContainingAppName;
  if (callDirectoryLocalizedExtensionContainingAppName)
  {
    [v4 setObject:callDirectoryLocalizedExtensionContainingAppName forKey:@"callDirectoryLocalizedExtensionContainingAppName"];
  }

  callDirectoryExtensionIdentifier = self->_callDirectoryExtensionIdentifier;
  if (callDirectoryExtensionIdentifier)
  {
    [v4 setObject:callDirectoryExtensionIdentifier forKey:@"callDirectoryExtensionIdentifier"];
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v4 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  contactIdentifiers = self->_contactIdentifiers;
  if (contactIdentifiers)
  {
    [v4 setObject:contactIdentifiers forKey:@"contactIdentifiers"];
  }

  companyDepartment = self->_companyDepartment;
  if (companyDepartment)
  {
    [v4 setObject:companyDepartment forKey:@"companyDepartment"];
  }

  companyImageURL = self->_companyImageURL;
  if (companyImageURL)
  {
    [v4 setObject:companyImageURL forKey:@"companyImageURL"];
  }

  return v4;
}

- (void)addContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  contactIdentifiers = self->_contactIdentifiers;
  v8 = identifiersCopy;
  if (!contactIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contactIdentifiers;
    self->_contactIdentifiers = v6;

    identifiersCopy = v8;
    contactIdentifiers = self->_contactIdentifiers;
  }

  [(NSMutableArray *)contactIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallDisplayContext;
  v3 = [(CSDMessagingCallDisplayContext *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCallDisplayContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_protoPersonNameComponents)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_suggestedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_companyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mapName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_location)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callDirectoryLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callDirectoryLocalizedExtensionContainingAppName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callDirectoryExtensionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_contactIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_companyDepartment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_companyImageURL)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if (self->_protoPersonNameComponents)
  {
    [toCopy setProtoPersonNameComponents:?];
  }

  if (self->_suggestedName)
  {
    [toCopy setSuggestedName:?];
  }

  if (self->_label)
  {
    [toCopy setLabel:?];
  }

  if (self->_companyName)
  {
    [toCopy setCompanyName:?];
  }

  if (self->_mapName)
  {
    [toCopy setMapName:?];
  }

  if (self->_location)
  {
    [toCopy setLocation:?];
  }

  if (self->_contactName)
  {
    [toCopy setContactName:?];
  }

  if (self->_contactLabel)
  {
    [toCopy setContactLabel:?];
  }

  if (self->_callDirectoryLabel)
  {
    [toCopy setCallDirectoryLabel:?];
  }

  if (self->_callDirectoryLocalizedExtensionContainingAppName)
  {
    [toCopy setCallDirectoryLocalizedExtensionContainingAppName:?];
  }

  if (self->_callDirectoryExtensionIdentifier)
  {
    [toCopy setCallDirectoryExtensionIdentifier:?];
  }

  if (self->_contactIdentifier)
  {
    [toCopy setContactIdentifier:?];
  }

  if ([(CSDMessagingCallDisplayContext *)self contactIdentifiersCount])
  {
    [toCopy clearContactIdentifiers];
    contactIdentifiersCount = [(CSDMessagingCallDisplayContext *)self contactIdentifiersCount];
    if (contactIdentifiersCount)
    {
      v5 = contactIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSDMessagingCallDisplayContext *)self contactIdentifiersAtIndex:i];
        [toCopy addContactIdentifiers:v7];
      }
    }
  }

  if (self->_companyDepartment)
  {
    [toCopy setCompanyDepartment:?];
  }

  v8 = toCopy;
  if (self->_companyImageURL)
  {
    [toCopy setCompanyImageURL:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(CSDMessagingPersonNameComponents *)self->_protoPersonNameComponents copyWithZone:zone];
  v9 = v5[15];
  v5[15] = v8;

  v10 = [(NSString *)self->_suggestedName copyWithZone:zone];
  v11 = v5[16];
  v5[16] = v10;

  v12 = [(NSString *)self->_label copyWithZone:zone];
  v13 = v5[11];
  v5[11] = v12;

  v14 = [(NSString *)self->_companyName copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_mapName copyWithZone:zone];
  v17 = v5[13];
  v5[13] = v16;

  v18 = [(NSString *)self->_location copyWithZone:zone];
  v19 = v5[12];
  v5[12] = v18;

  v20 = [(NSString *)self->_contactName copyWithZone:zone];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(NSString *)self->_contactLabel copyWithZone:zone];
  v23 = v5[9];
  v5[9] = v22;

  v24 = [(NSString *)self->_callDirectoryLabel copyWithZone:zone];
  v25 = v5[2];
  v5[2] = v24;

  v26 = [(NSString *)self->_callDirectoryLocalizedExtensionContainingAppName copyWithZone:zone];
  v27 = v5[3];
  v5[3] = v26;

  v28 = [(NSString *)self->_callDirectoryExtensionIdentifier copyWithZone:zone];
  v29 = v5[1];
  v5[1] = v28;

  v30 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v31 = v5[7];
  v5[7] = v30;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = self->_contactIdentifiers;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v44;
    do
    {
      v36 = 0;
      do
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v43 + 1) + 8 * v36) copyWithZone:{zone, v43}];
        [v5 addContactIdentifiers:v37];

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v34);
  }

  v38 = [(NSString *)self->_companyDepartment copyWithZone:zone];
  v39 = v5[4];
  v5[4] = v38;

  v40 = [(NSString *)self->_companyImageURL copyWithZone:zone];
  v41 = v5[5];
  v5[5] = v40;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  name = self->_name;
  if (name | equalCopy[14])
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_34;
    }
  }

  protoPersonNameComponents = self->_protoPersonNameComponents;
  if (protoPersonNameComponents | equalCopy[15] && ![(CSDMessagingPersonNameComponents *)protoPersonNameComponents isEqual:?])
  {
    goto LABEL_34;
  }

  suggestedName = self->_suggestedName;
  if (suggestedName | equalCopy[16] && ![(NSString *)suggestedName isEqual:?])
  {
    goto LABEL_34;
  }

  label = self->_label;
  if (label | equalCopy[11] && ![(NSString *)label isEqual:?])
  {
    goto LABEL_34;
  }

  companyName = self->_companyName;
  if (companyName | equalCopy[6] && ![(NSString *)companyName isEqual:?])
  {
    goto LABEL_34;
  }

  mapName = self->_mapName;
  if (mapName | equalCopy[13] && ![(NSString *)mapName isEqual:?])
  {
    goto LABEL_34;
  }

  location = self->_location;
  if (location | equalCopy[12] && ![(NSString *)location isEqual:?])
  {
    goto LABEL_34;
  }

  contactName = self->_contactName;
  if (contactName | equalCopy[10] && ![(NSString *)contactName isEqual:?])
  {
    goto LABEL_34;
  }

  if (((contactLabel = self->_contactLabel, !(contactLabel | equalCopy[9])) || [(NSString *)contactLabel isEqual:?]) && ((callDirectoryLabel = self->_callDirectoryLabel, !(callDirectoryLabel | equalCopy[2])) || [(NSString *)callDirectoryLabel isEqual:?]) && ((callDirectoryLocalizedExtensionContainingAppName = self->_callDirectoryLocalizedExtensionContainingAppName, !(callDirectoryLocalizedExtensionContainingAppName | equalCopy[3])) || [(NSString *)callDirectoryLocalizedExtensionContainingAppName isEqual:?]) && ((callDirectoryExtensionIdentifier = self->_callDirectoryExtensionIdentifier, !(callDirectoryExtensionIdentifier | equalCopy[1])) || [(NSString *)callDirectoryExtensionIdentifier isEqual:?]) && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | equalCopy[7])) || [(NSString *)contactIdentifier isEqual:?]) && ((contactIdentifiers = self->_contactIdentifiers, !(contactIdentifiers | equalCopy[8])) || [(NSMutableArray *)contactIdentifiers isEqual:?]) && ((companyDepartment = self->_companyDepartment, !(companyDepartment | equalCopy[4])) || [(NSString *)companyDepartment isEqual:?]))
  {
    companyImageURL = self->_companyImageURL;
    if (companyImageURL | equalCopy[5])
    {
      v21 = [(NSString *)companyImageURL isEqual:?];
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
LABEL_34:
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(CSDMessagingPersonNameComponents *)self->_protoPersonNameComponents hash]^ v3;
  v5 = [(NSString *)self->_suggestedName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_label hash];
  v7 = [(NSString *)self->_companyName hash];
  v8 = v7 ^ [(NSString *)self->_mapName hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_location hash];
  v10 = [(NSString *)self->_contactName hash];
  v11 = v10 ^ [(NSString *)self->_contactLabel hash];
  v12 = v11 ^ [(NSString *)self->_callDirectoryLabel hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_callDirectoryLocalizedExtensionContainingAppName hash];
  v14 = [(NSString *)self->_callDirectoryExtensionIdentifier hash];
  v15 = v14 ^ [(NSString *)self->_contactIdentifier hash];
  v16 = v15 ^ [(NSMutableArray *)self->_contactIdentifiers hash];
  v17 = v16 ^ [(NSString *)self->_companyDepartment hash];
  return v13 ^ v17 ^ [(NSString *)self->_companyImageURL hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 14))
  {
    [(CSDMessagingCallDisplayContext *)self setName:?];
  }

  protoPersonNameComponents = self->_protoPersonNameComponents;
  v6 = *(fromCopy + 15);
  if (protoPersonNameComponents)
  {
    if (v6)
    {
      [(CSDMessagingPersonNameComponents *)protoPersonNameComponents mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(CSDMessagingCallDisplayContext *)self setProtoPersonNameComponents:?];
  }

  if (*(fromCopy + 16))
  {
    [(CSDMessagingCallDisplayContext *)self setSuggestedName:?];
  }

  if (*(fromCopy + 11))
  {
    [(CSDMessagingCallDisplayContext *)self setLabel:?];
  }

  if (*(fromCopy + 6))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyName:?];
  }

  if (*(fromCopy + 13))
  {
    [(CSDMessagingCallDisplayContext *)self setMapName:?];
  }

  if (*(fromCopy + 12))
  {
    [(CSDMessagingCallDisplayContext *)self setLocation:?];
  }

  if (*(fromCopy + 10))
  {
    [(CSDMessagingCallDisplayContext *)self setContactName:?];
  }

  if (*(fromCopy + 9))
  {
    [(CSDMessagingCallDisplayContext *)self setContactLabel:?];
  }

  if (*(fromCopy + 2))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryLabel:?];
  }

  if (*(fromCopy + 3))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:?];
  }

  if (*(fromCopy + 1))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryExtensionIdentifier:?];
  }

  if (*(fromCopy + 7))
  {
    [(CSDMessagingCallDisplayContext *)self setContactIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 8);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CSDMessagingCallDisplayContext *)self addContactIdentifiers:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 4))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyDepartment:?];
  }

  if (*(fromCopy + 5))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyImageURL:?];
  }
}

- (CSDMessagingCallDisplayContext)initWithCallDisplayContext:(id)context
{
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = CSDMessagingCallDisplayContext;
  v5 = [(CSDMessagingCallDisplayContext *)&v27 init];
  if (v5)
  {
    name = [contextCopy name];
    [(CSDMessagingCallDisplayContext *)v5 setName:name];

    v7 = [CSDMessagingPersonNameComponents alloc];
    personNameComponents = [contextCopy personNameComponents];
    v9 = [(CSDMessagingPersonNameComponents *)v7 initWithPersonNameComponents:personNameComponents];
    [(CSDMessagingCallDisplayContext *)v5 setProtoPersonNameComponents:v9];

    suggestedName = [contextCopy suggestedName];
    [(CSDMessagingCallDisplayContext *)v5 setSuggestedName:suggestedName];

    label = [contextCopy label];
    [(CSDMessagingCallDisplayContext *)v5 setLabel:label];

    companyName = [contextCopy companyName];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyName:companyName];

    companyDepartment = [contextCopy companyDepartment];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyDepartment:companyDepartment];

    location = [contextCopy location];
    [(CSDMessagingCallDisplayContext *)v5 setLocation:location];

    contactName = [contextCopy contactName];
    [(CSDMessagingCallDisplayContext *)v5 setContactName:contactName];

    contactLabel = [contextCopy contactLabel];
    [(CSDMessagingCallDisplayContext *)v5 setContactLabel:contactLabel];

    callDirectoryLabel = [contextCopy callDirectoryLabel];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryLabel:callDirectoryLabel];

    callDirectoryLocalizedExtensionContainingAppName = [contextCopy callDirectoryLocalizedExtensionContainingAppName];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];

    callDirectoryExtensionIdentifier = [contextCopy callDirectoryExtensionIdentifier];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];

    contactIdentifiers = [contextCopy contactIdentifiers];
    firstObject = [contactIdentifiers firstObject];
    [(CSDMessagingCallDisplayContext *)v5 setContactIdentifier:firstObject];

    contactIdentifiers2 = [contextCopy contactIdentifiers];
    v23 = [contactIdentifiers2 mutableCopy];
    [(CSDMessagingCallDisplayContext *)v5 setContactIdentifiers:v23];

    companyLogoURL = [contextCopy companyLogoURL];
    relativePath = [companyLogoURL relativePath];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyImageURL:relativePath];
  }

  return v5;
}

- (TUCallDisplayContext)displayContext
{
  v3 = objc_alloc_init(TUMutableCallDisplayContext);
  name = [(CSDMessagingCallDisplayContext *)self name];
  [v3 setName:name];

  protoPersonNameComponents = [(CSDMessagingCallDisplayContext *)self protoPersonNameComponents];
  personNameComponents = [protoPersonNameComponents personNameComponents];
  [v3 setPersonNameComponents:personNameComponents];

  location = [(CSDMessagingCallDisplayContext *)self location];
  [v3 setLocation:location];

  label = [(CSDMessagingCallDisplayContext *)self label];
  [v3 setLabel:label];

  companyName = [(CSDMessagingCallDisplayContext *)self companyName];
  [v3 setCompanyName:companyName];

  companyDepartment = [(CSDMessagingCallDisplayContext *)self companyDepartment];
  [v3 setCompanyDepartment:companyDepartment];

  suggestedName = [(CSDMessagingCallDisplayContext *)self suggestedName];
  [v3 setSuggestedName:suggestedName];

  contactName = [(CSDMessagingCallDisplayContext *)self contactName];
  [v3 setContactName:contactName];

  contactLabel = [(CSDMessagingCallDisplayContext *)self contactLabel];
  [v3 setContactLabel:contactLabel];

  callDirectoryLabel = [(CSDMessagingCallDisplayContext *)self callDirectoryLabel];
  [v3 setCallDirectoryLabel:callDirectoryLabel];

  callDirectoryLocalizedExtensionContainingAppName = [(CSDMessagingCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v3 setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];

  callDirectoryExtensionIdentifier = [(CSDMessagingCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v3 setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];

  contactIdentifiers = [(CSDMessagingCallDisplayContext *)self contactIdentifiers];
  [v3 setContactIdentifiers:contactIdentifiers];

  companyImageURL = [(CSDMessagingCallDisplayContext *)self companyImageURL];

  if (companyImageURL)
  {
    companyImageURL2 = [(CSDMessagingCallDisplayContext *)self companyImageURL];
    v20 = [NSURL fileURLWithPath:companyImageURL2 isDirectory:0];
    [v3 setCompanyLogoURL:v20];
  }

  v21 = [v3 copy];

  return v21;
}

@end