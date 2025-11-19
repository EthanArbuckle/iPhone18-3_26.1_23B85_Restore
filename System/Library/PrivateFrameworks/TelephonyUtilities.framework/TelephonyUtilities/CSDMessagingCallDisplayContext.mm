@interface CSDMessagingCallDisplayContext
- (BOOL)isEqual:(id)a3;
- (CSDMessagingCallDisplayContext)initWithCallDisplayContext:(id)a3;
- (TUCallDisplayContext)displayContext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
    v7 = [(CSDMessagingPersonNameComponents *)protoPersonNameComponents dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"protoPersonNameComponents"];
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

- (void)addContactIdentifiers:(id)a3
{
  v4 = a3;
  contactIdentifiers = self->_contactIdentifiers;
  v8 = v4;
  if (!contactIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contactIdentifiers;
    self->_contactIdentifiers = v6;

    v4 = v8;
    contactIdentifiers = self->_contactIdentifiers;
  }

  [(NSMutableArray *)contactIdentifiers addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallDisplayContext;
  v3 = [(CSDMessagingCallDisplayContext *)&v7 description];
  v4 = [(CSDMessagingCallDisplayContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_name)
  {
    [v9 setName:?];
  }

  if (self->_protoPersonNameComponents)
  {
    [v9 setProtoPersonNameComponents:?];
  }

  if (self->_suggestedName)
  {
    [v9 setSuggestedName:?];
  }

  if (self->_label)
  {
    [v9 setLabel:?];
  }

  if (self->_companyName)
  {
    [v9 setCompanyName:?];
  }

  if (self->_mapName)
  {
    [v9 setMapName:?];
  }

  if (self->_location)
  {
    [v9 setLocation:?];
  }

  if (self->_contactName)
  {
    [v9 setContactName:?];
  }

  if (self->_contactLabel)
  {
    [v9 setContactLabel:?];
  }

  if (self->_callDirectoryLabel)
  {
    [v9 setCallDirectoryLabel:?];
  }

  if (self->_callDirectoryLocalizedExtensionContainingAppName)
  {
    [v9 setCallDirectoryLocalizedExtensionContainingAppName:?];
  }

  if (self->_callDirectoryExtensionIdentifier)
  {
    [v9 setCallDirectoryExtensionIdentifier:?];
  }

  if (self->_contactIdentifier)
  {
    [v9 setContactIdentifier:?];
  }

  if ([(CSDMessagingCallDisplayContext *)self contactIdentifiersCount])
  {
    [v9 clearContactIdentifiers];
    v4 = [(CSDMessagingCallDisplayContext *)self contactIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSDMessagingCallDisplayContext *)self contactIdentifiersAtIndex:i];
        [v9 addContactIdentifiers:v7];
      }
    }
  }

  if (self->_companyDepartment)
  {
    [v9 setCompanyDepartment:?];
  }

  v8 = v9;
  if (self->_companyImageURL)
  {
    [v9 setCompanyImageURL:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(CSDMessagingPersonNameComponents *)self->_protoPersonNameComponents copyWithZone:a3];
  v9 = v5[15];
  v5[15] = v8;

  v10 = [(NSString *)self->_suggestedName copyWithZone:a3];
  v11 = v5[16];
  v5[16] = v10;

  v12 = [(NSString *)self->_label copyWithZone:a3];
  v13 = v5[11];
  v5[11] = v12;

  v14 = [(NSString *)self->_companyName copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_mapName copyWithZone:a3];
  v17 = v5[13];
  v5[13] = v16;

  v18 = [(NSString *)self->_location copyWithZone:a3];
  v19 = v5[12];
  v5[12] = v18;

  v20 = [(NSString *)self->_contactName copyWithZone:a3];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(NSString *)self->_contactLabel copyWithZone:a3];
  v23 = v5[9];
  v5[9] = v22;

  v24 = [(NSString *)self->_callDirectoryLabel copyWithZone:a3];
  v25 = v5[2];
  v5[2] = v24;

  v26 = [(NSString *)self->_callDirectoryLocalizedExtensionContainingAppName copyWithZone:a3];
  v27 = v5[3];
  v5[3] = v26;

  v28 = [(NSString *)self->_callDirectoryExtensionIdentifier copyWithZone:a3];
  v29 = v5[1];
  v5[1] = v28;

  v30 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
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

        v37 = [*(*(&v43 + 1) + 8 * v36) copyWithZone:{a3, v43}];
        [v5 addContactIdentifiers:v37];

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v34);
  }

  v38 = [(NSString *)self->_companyDepartment copyWithZone:a3];
  v39 = v5[4];
  v5[4] = v38;

  v40 = [(NSString *)self->_companyImageURL copyWithZone:a3];
  v41 = v5[5];
  v5[5] = v40;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  name = self->_name;
  if (name | v4[14])
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_34;
    }
  }

  protoPersonNameComponents = self->_protoPersonNameComponents;
  if (protoPersonNameComponents | v4[15] && ![(CSDMessagingPersonNameComponents *)protoPersonNameComponents isEqual:?])
  {
    goto LABEL_34;
  }

  suggestedName = self->_suggestedName;
  if (suggestedName | v4[16] && ![(NSString *)suggestedName isEqual:?])
  {
    goto LABEL_34;
  }

  label = self->_label;
  if (label | v4[11] && ![(NSString *)label isEqual:?])
  {
    goto LABEL_34;
  }

  companyName = self->_companyName;
  if (companyName | v4[6] && ![(NSString *)companyName isEqual:?])
  {
    goto LABEL_34;
  }

  mapName = self->_mapName;
  if (mapName | v4[13] && ![(NSString *)mapName isEqual:?])
  {
    goto LABEL_34;
  }

  location = self->_location;
  if (location | v4[12] && ![(NSString *)location isEqual:?])
  {
    goto LABEL_34;
  }

  contactName = self->_contactName;
  if (contactName | v4[10] && ![(NSString *)contactName isEqual:?])
  {
    goto LABEL_34;
  }

  if (((contactLabel = self->_contactLabel, !(contactLabel | v4[9])) || [(NSString *)contactLabel isEqual:?]) && ((callDirectoryLabel = self->_callDirectoryLabel, !(callDirectoryLabel | v4[2])) || [(NSString *)callDirectoryLabel isEqual:?]) && ((callDirectoryLocalizedExtensionContainingAppName = self->_callDirectoryLocalizedExtensionContainingAppName, !(callDirectoryLocalizedExtensionContainingAppName | v4[3])) || [(NSString *)callDirectoryLocalizedExtensionContainingAppName isEqual:?]) && ((callDirectoryExtensionIdentifier = self->_callDirectoryExtensionIdentifier, !(callDirectoryExtensionIdentifier | v4[1])) || [(NSString *)callDirectoryExtensionIdentifier isEqual:?]) && ((contactIdentifier = self->_contactIdentifier, !(contactIdentifier | v4[7])) || [(NSString *)contactIdentifier isEqual:?]) && ((contactIdentifiers = self->_contactIdentifiers, !(contactIdentifiers | v4[8])) || [(NSMutableArray *)contactIdentifiers isEqual:?]) && ((companyDepartment = self->_companyDepartment, !(companyDepartment | v4[4])) || [(NSString *)companyDepartment isEqual:?]))
  {
    companyImageURL = self->_companyImageURL;
    if (companyImageURL | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 14))
  {
    [(CSDMessagingCallDisplayContext *)self setName:?];
  }

  protoPersonNameComponents = self->_protoPersonNameComponents;
  v6 = *(v4 + 15);
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

  if (*(v4 + 16))
  {
    [(CSDMessagingCallDisplayContext *)self setSuggestedName:?];
  }

  if (*(v4 + 11))
  {
    [(CSDMessagingCallDisplayContext *)self setLabel:?];
  }

  if (*(v4 + 6))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyName:?];
  }

  if (*(v4 + 13))
  {
    [(CSDMessagingCallDisplayContext *)self setMapName:?];
  }

  if (*(v4 + 12))
  {
    [(CSDMessagingCallDisplayContext *)self setLocation:?];
  }

  if (*(v4 + 10))
  {
    [(CSDMessagingCallDisplayContext *)self setContactName:?];
  }

  if (*(v4 + 9))
  {
    [(CSDMessagingCallDisplayContext *)self setContactLabel:?];
  }

  if (*(v4 + 2))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryLabel:?];
  }

  if (*(v4 + 3))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryLocalizedExtensionContainingAppName:?];
  }

  if (*(v4 + 1))
  {
    [(CSDMessagingCallDisplayContext *)self setCallDirectoryExtensionIdentifier:?];
  }

  if (*(v4 + 7))
  {
    [(CSDMessagingCallDisplayContext *)self setContactIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v4 + 8);
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

  if (*(v4 + 4))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyDepartment:?];
  }

  if (*(v4 + 5))
  {
    [(CSDMessagingCallDisplayContext *)self setCompanyImageURL:?];
  }
}

- (CSDMessagingCallDisplayContext)initWithCallDisplayContext:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CSDMessagingCallDisplayContext;
  v5 = [(CSDMessagingCallDisplayContext *)&v27 init];
  if (v5)
  {
    v6 = [v4 name];
    [(CSDMessagingCallDisplayContext *)v5 setName:v6];

    v7 = [CSDMessagingPersonNameComponents alloc];
    v8 = [v4 personNameComponents];
    v9 = [(CSDMessagingPersonNameComponents *)v7 initWithPersonNameComponents:v8];
    [(CSDMessagingCallDisplayContext *)v5 setProtoPersonNameComponents:v9];

    v10 = [v4 suggestedName];
    [(CSDMessagingCallDisplayContext *)v5 setSuggestedName:v10];

    v11 = [v4 label];
    [(CSDMessagingCallDisplayContext *)v5 setLabel:v11];

    v12 = [v4 companyName];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyName:v12];

    v13 = [v4 companyDepartment];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyDepartment:v13];

    v14 = [v4 location];
    [(CSDMessagingCallDisplayContext *)v5 setLocation:v14];

    v15 = [v4 contactName];
    [(CSDMessagingCallDisplayContext *)v5 setContactName:v15];

    v16 = [v4 contactLabel];
    [(CSDMessagingCallDisplayContext *)v5 setContactLabel:v16];

    v17 = [v4 callDirectoryLabel];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryLabel:v17];

    v18 = [v4 callDirectoryLocalizedExtensionContainingAppName];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryLocalizedExtensionContainingAppName:v18];

    v19 = [v4 callDirectoryExtensionIdentifier];
    [(CSDMessagingCallDisplayContext *)v5 setCallDirectoryExtensionIdentifier:v19];

    v20 = [v4 contactIdentifiers];
    v21 = [v20 firstObject];
    [(CSDMessagingCallDisplayContext *)v5 setContactIdentifier:v21];

    v22 = [v4 contactIdentifiers];
    v23 = [v22 mutableCopy];
    [(CSDMessagingCallDisplayContext *)v5 setContactIdentifiers:v23];

    v24 = [v4 companyLogoURL];
    v25 = [v24 relativePath];
    [(CSDMessagingCallDisplayContext *)v5 setCompanyImageURL:v25];
  }

  return v5;
}

- (TUCallDisplayContext)displayContext
{
  v3 = objc_alloc_init(TUMutableCallDisplayContext);
  v4 = [(CSDMessagingCallDisplayContext *)self name];
  [v3 setName:v4];

  v5 = [(CSDMessagingCallDisplayContext *)self protoPersonNameComponents];
  v6 = [v5 personNameComponents];
  [v3 setPersonNameComponents:v6];

  v7 = [(CSDMessagingCallDisplayContext *)self location];
  [v3 setLocation:v7];

  v8 = [(CSDMessagingCallDisplayContext *)self label];
  [v3 setLabel:v8];

  v9 = [(CSDMessagingCallDisplayContext *)self companyName];
  [v3 setCompanyName:v9];

  v10 = [(CSDMessagingCallDisplayContext *)self companyDepartment];
  [v3 setCompanyDepartment:v10];

  v11 = [(CSDMessagingCallDisplayContext *)self suggestedName];
  [v3 setSuggestedName:v11];

  v12 = [(CSDMessagingCallDisplayContext *)self contactName];
  [v3 setContactName:v12];

  v13 = [(CSDMessagingCallDisplayContext *)self contactLabel];
  [v3 setContactLabel:v13];

  v14 = [(CSDMessagingCallDisplayContext *)self callDirectoryLabel];
  [v3 setCallDirectoryLabel:v14];

  v15 = [(CSDMessagingCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v3 setCallDirectoryLocalizedExtensionContainingAppName:v15];

  v16 = [(CSDMessagingCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v3 setCallDirectoryExtensionIdentifier:v16];

  v17 = [(CSDMessagingCallDisplayContext *)self contactIdentifiers];
  [v3 setContactIdentifiers:v17];

  v18 = [(CSDMessagingCallDisplayContext *)self companyImageURL];

  if (v18)
  {
    v19 = [(CSDMessagingCallDisplayContext *)self companyImageURL];
    v20 = [NSURL fileURLWithPath:v19 isDirectory:0];
    [v3 setCompanyLogoURL:v20];
  }

  v21 = [v3 copy];

  return v21;
}

@end