@interface ABSContactsLinkCluster
+ (id)null;
- (ABSContactsLinkCluster)initWithContact:(id)contact;
- (ABSContactsLinkCluster)initWithContact_LOCKED:(id)d;
- (ABSContactsLinkCluster)initWithIdentifier:(id)identifier;
- (ABSContactsLinkCluster)initWithIdentifier_LOCKED:(id)d;
- (ABSContactsLinkCluster)initWithPBStuff:(id)stuff contact:(id)contact;
- (BOOL)haveAllContacts_LOCKED;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNull;
- (NSMutableDictionary)clusterDictionary;
- (id)description;
- (void)enumerateContacts_LOCKED:(id)d;
@end

@implementation ABSContactsLinkCluster

- (ABSContactsLinkCluster)initWithPBStuff:(id)stuff contact:(id)contact
{
  stuffCopy = stuff;
  contactCopy = contact;
  v39.receiver = self;
  v39.super_class = ABSContactsLinkCluster;
  v8 = [(ABSContactsLinkCluster *)&v39 init];
  if (!v8)
  {
LABEL_23:
    null = v8;
    goto LABEL_24;
  }

  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(stuffCopy, "count")}];
  cluster = v8->_cluster;
  v8->_cluster = v9;

  if (stuffCopy && [stuffCopy count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = stuffCopy;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v33 = contactCopy;
      v34 = stuffCopy;
      v14 = 0;
      v15 = 0;
      v16 = *v36;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          isImage = [v18 isImage];
          v14 |= isImage;
          isName = [v18 isName];
          v15 |= isName;
          if (isName)
          {
            v21 = isImage & 1 | 2;
          }

          else
          {
            v21 = isImage & 1;
          }

          v22 = [NSNumber numberWithInteger:v21];
          v23 = v8->_cluster;
          toGuid = [v18 toGuid];
          [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:toGuid];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);

      v25 = 2;
      if ((v14 & 1) == 0)
      {
        v25 = 3;
      }

      if (v15)
      {
        v26 = (v14 & 1) == 0;
      }

      else
      {
        v26 = v25;
      }

      contactCopy = v33;
      stuffCopy = v34;
    }

    else
    {

      v26 = 3;
    }

    v28 = [NSNumber numberWithInteger:v26];
    v29 = v8->_cluster;
    identifier = [contactCopy identifier];
    [(NSMutableDictionary *)v29 setObject:v28 forKeyedSubscript:identifier];

    goto LABEL_23;
  }

  null = [objc_opt_class() null];
LABEL_24:
  v31 = null;

  return v31;
}

- (ABSContactsLinkCluster)initWithContact:(id)contact
{
  contactCopy = contact;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100023CD8;
  v20 = sub_100023CE8;
  v21 = 0;
  v5 = +[ABSContactsInterface sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100023CF0;
  v12[3] = &unk_10005D5F0;
  v15 = &v16;
  selfCopy = self;
  v13 = selfCopy;
  v7 = contactCopy;
  v14 = v7;
  [v5 accessSync:v12];

  v8 = v17[5];
  v9 = v14;
  v10 = v8;

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (ABSContactsLinkCluster)initWithContact_LOCKED:(id)d
{
  identifier = [d identifier];
  v5 = [(ABSContactsLinkCluster *)self initWithIdentifier_LOCKED:identifier];

  return v5;
}

- (ABSContactsLinkCluster)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100023CD8;
  v20 = sub_100023CE8;
  v21 = 0;
  v5 = +[ABSContactsInterface sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100023EE4;
  v12[3] = &unk_10005D5F0;
  v15 = &v16;
  selfCopy = self;
  v13 = selfCopy;
  v7 = identifierCopy;
  v14 = v7;
  [v5 accessSync:v12];

  v8 = v17[5];
  v9 = v14;
  v10 = v8;

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (ABSContactsLinkCluster)initWithIdentifier_LOCKED:(id)d
{
  dCopy = d;
  v36.receiver = self;
  v36.super_class = ABSContactsLinkCluster;
  v4 = [(ABSContactsLinkCluster *)&v36 init];
  if (v4)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100023CD8;
    v34 = sub_100023CE8;
    v35 = 0;
    v5 = +[ABSContactsInterface sharedInstance];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100024218;
    v27[3] = &unk_10005D660;
    v28 = dCopy;
    v29 = &v30;
    [v5 accessAssert:v27];

    v6 = [NSMutableDictionary alloc];
    v7 = [v6 initWithCapacity:{objc_msgSend(v31[5], "count")}];
    cluster = v4->_cluster;
    v4->_cluster = v7;

    v9 = v31[5];
    if (v9 && [v9 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v31[5];
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v37 count:16];
      if (v11)
      {
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            isPreferredForName = [v14 isPreferredForName];
            isPreferredForImage = [v14 isPreferredForImage];
            if (isPreferredForName)
            {
              v17 = 2;
            }

            else
            {
              v17 = 0;
            }

            v18 = [NSNumber numberWithInteger:v17 | isPreferredForImage];
            v19 = v4->_cluster;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:identifier];
          }

          v11 = [v10 countByEnumeratingWithState:&v23 objects:v37 count:16];
        }

        while (v11);
      }
    }

    _Block_object_dispose(&v30, 8);
  }

  return v4;
}

- (BOOL)haveAllContacts_LOCKED
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = +[ABSContactsInterface sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024548;
  v6[3] = &unk_10005D660;
  v6[4] = self;
  v6[5] = &v7;
  [v3 accessAssert:v6];

  v4 = *(v8 + 6);
  LOBYTE(self) = [(NSMutableDictionary *)self->_cluster count]== v4;
  _Block_object_dispose(&v7, 8);
  return self;
}

- (void)enumerateContacts_LOCKED:(id)d
{
  dCopy = d;
  if (![(ABSContactsLinkCluster *)self isNull]&& [(NSMutableDictionary *)self->_cluster count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_cluster, "count")}];
    v6 = +[ABSContactsInterface sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000247E8;
    v8[3] = &unk_10005D6B0;
    v8[4] = self;
    v9 = v5;
    v10 = dCopy;
    v7 = v5;
    [v6 accessAssert:v8];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ABSContactsLinkCluster *)self isEqualToABSContactsLinkCluster:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)clusterDictionary
{
  v2 = [(NSMutableDictionary *)self->_cluster copy];

  return v2;
}

+ (id)null
{
  if (qword_100071C80 != -1)
  {
    sub_10003B2E0();
  }

  v3 = qword_100071C88;

  return v3;
}

- (BOOL)isNull
{
  null = [objc_opt_class() null];
  LOBYTE(self) = null == self;

  return self;
}

- (id)description
{
  if ([(ABSContactsLinkCluster *)self isNull])
  {
    v3 = @"<ABSContactsLinkClusterNullInstance>";
  }

  else
  {
    v3 = [NSString stringWithFormat:@"<ABSContactsLinkCluster: %p %@>", self, self->_cluster];
  }

  return v3;
}

@end