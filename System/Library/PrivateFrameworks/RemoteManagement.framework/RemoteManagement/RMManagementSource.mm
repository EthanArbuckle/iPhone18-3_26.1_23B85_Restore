@interface RMManagementSource
+ (id)fetchRequestWithAccountIdentifier:(id)identifier;
+ (id)fetchRequestWithBootstrapURI:(id)i;
+ (id)fetchRequestWithBootstrapURI:(id)i enrollmentType:(int64_t)type;
+ (id)fetchRequestWithDeviceChannel;
+ (id)fetchRequestWithEnrollmentType:(int64_t)type;
+ (id)fetchRequestWithEnrollmentTypes:(id)types;
+ (id)fetchRequestWithIdentifier:(id)identifier;
- (id)reportDetails;
- (void)awakeFromInsert;
@end

@implementation RMManagementSource

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = RMManagementSource;
  [(RMManagementSource *)&v5 awakeFromInsert];
  v3 = objc_opt_new();
  uUIDString = [v3 UUIDString];
  [(RMManagementSource *)self setPrimitiveValue:uUIDString forKey:@"identifier"];
}

+ (id)fetchRequestWithBootstrapURI:(id)i
{
  iCopy = i;
  fetchRequest = [self fetchRequest];
  iCopy = [NSPredicate predicateWithFormat:@"(%K == %@)", @"bootstrapURI", iCopy];

  [fetchRequest setPredicate:iCopy];

  return fetchRequest;
}

+ (id)fetchRequestWithBootstrapURI:(id)i enrollmentType:(int64_t)type
{
  iCopy = i;
  fetchRequest = [self fetchRequest];
  type = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d)", @"bootstrapURI", iCopy, @"enrollmentType", type];

  [fetchRequest setPredicate:type];

  return fetchRequest;
}

+ (id)fetchRequestWithDeviceChannel
{
  fetchRequest = [self fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %d) || (%K == %d)", @"enrollmentType", 1, @"enrollmentType", 3];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchRequestWithEnrollmentType:(int64_t)type
{
  fetchRequest = [self fetchRequest];
  type = [NSPredicate predicateWithFormat:@"%K == %d", @"enrollmentType", type];
  [fetchRequest setPredicate:type];

  return fetchRequest;
}

+ (id)fetchRequestWithEnrollmentTypes:(id)types
{
  typesCopy = types;
  fetchRequest = [self fetchRequest];
  typesCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"enrollmentType", typesCopy];

  [fetchRequest setPredicate:typesCopy];

  return fetchRequest;
}

+ (id)fetchRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"(%K == %@)", @"identifier", identifierCopy];

  [fetchRequest setPredicate:identifierCopy];

  return fetchRequest;
}

+ (id)fetchRequestWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"(%K == %@)", @"accountIdentifier", identifierCopy];

  [fetchRequest setPredicate:identifierCopy];

  return fetchRequest;
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  accountIdentifier = [(RMManagementSource *)self accountIdentifier];
  [v3 setObject:accountIdentifier forKeyedSubscript:@"accountIdentifier"];

  authenticationCredential = [(RMManagementSource *)self authenticationCredential];
  v6 = [authenticationCredential description];
  [v3 setObject:v6 forKeyedSubscript:@"authenticationCredential"];

  bootstrapURI = [(RMManagementSource *)self bootstrapURI];
  [v3 setObject:bootstrapURI forKeyedSubscript:@"bootstrapURI"];

  v8 = [RMStoreHelper descriptorForStoreType:[(RMManagementSource *)self enrollmentType]];
  [v3 setObject:v8 forKeyedSubscript:@"enrollmentType"];

  conduitConfig = [(RMManagementSource *)self conduitConfig];
  reportDetails = [conduitConfig reportDetails];
  [v3 setObject:reportDetails forKeyedSubscript:@"conduitConfig"];

  v11 = [NSNumber numberWithBool:[(RMManagementSource *)self enrolled]];
  [v3 setObject:v11 forKeyedSubscript:@"enrolled"];

  identifier = [(RMManagementSource *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  name = [(RMManagementSource *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  personaIdentifier = [(RMManagementSource *)self personaIdentifier];
  [v3 setObject:personaIdentifier forKeyedSubscript:@"personaIdentifier"];

  predicateStatusKeys = [(RMManagementSource *)self predicateStatusKeys];
  [v3 setObject:predicateStatusKeys forKeyedSubscript:@"predicateStatusKeys"];

  storeDescription = [(RMManagementSource *)self storeDescription];
  [v3 setObject:storeDescription forKeyedSubscript:@"storeDescription"];

  command = [(RMManagementSource *)self command];
  reportDetails2 = [command reportDetails];
  [v3 setObject:reportDetails2 forKeyedSubscript:@"command"];

  activations = [(RMManagementSource *)self activations];
  v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [activations count]);

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  activations2 = [(RMManagementSource *)self activations];
  v22 = [activations2 countByEnumeratingWithState:&v110 objects:v121 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v111;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v111 != v24)
        {
          objc_enumerationMutation(activations2);
        }

        reportDetails3 = [*(*(&v110 + 1) + 8 * i) reportDetails];
        [v20 addObject:reportDetails3];
      }

      v23 = [activations2 countByEnumeratingWithState:&v110 objects:v121 count:16];
    }

    while (v23);
  }

  [v3 setObject:v20 forKeyedSubscript:@"activations"];
  configurations = [(RMManagementSource *)self configurations];
  v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [configurations count]);

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  configurations2 = [(RMManagementSource *)self configurations];
  v30 = [configurations2 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v107;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v107 != v32)
        {
          objc_enumerationMutation(configurations2);
        }

        reportDetails4 = [*(*(&v106 + 1) + 8 * j) reportDetails];
        [v28 addObject:reportDetails4];
      }

      v31 = [configurations2 countByEnumeratingWithState:&v106 objects:v120 count:16];
    }

    while (v31);
  }

  v84 = v20;

  [v3 setObject:v28 forKeyedSubscript:@"configurations"];
  assets = [(RMManagementSource *)self assets];
  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assets count]);

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  assets2 = [(RMManagementSource *)self assets];
  v38 = [assets2 countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v103;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v103 != v40)
        {
          objc_enumerationMutation(assets2);
        }

        reportDetails5 = [*(*(&v102 + 1) + 8 * k) reportDetails];
        [v36 addObject:reportDetails5];
      }

      v39 = [assets2 countByEnumeratingWithState:&v102 objects:v119 count:16];
    }

    while (v39);
  }

  v83 = v28;

  [v3 setObject:v36 forKeyedSubscript:@"assets"];
  management = [(RMManagementSource *)self management];
  v44 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [management count]);

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  management2 = [(RMManagementSource *)self management];
  v46 = [management2 countByEnumeratingWithState:&v98 objects:v118 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v99;
    do
    {
      for (m = 0; m != v47; m = m + 1)
      {
        if (*v99 != v48)
        {
          objc_enumerationMutation(management2);
        }

        reportDetails6 = [*(*(&v98 + 1) + 8 * m) reportDetails];
        [v44 addObject:reportDetails6];
      }

      v47 = [management2 countByEnumeratingWithState:&v98 objects:v118 count:16];
    }

    while (v47);
  }

  v85 = v3;
  [v3 setObject:v44 forKeyedSubscript:@"management"];
  statusSubscriptions = [(RMManagementSource *)self statusSubscriptions];
  v52 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [statusSubscriptions count]);

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  statusSubscriptions2 = [(RMManagementSource *)self statusSubscriptions];
  v54 = [statusSubscriptions2 countByEnumeratingWithState:&v94 objects:v117 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v95;
    do
    {
      for (n = 0; n != v55; n = n + 1)
      {
        if (*v95 != v56)
        {
          objc_enumerationMutation(statusSubscriptions2);
        }

        reportDetails7 = [*(*(&v94 + 1) + 8 * n) reportDetails];
        [v52 addObject:reportDetails7];
      }

      v55 = [statusSubscriptions2 countByEnumeratingWithState:&v94 objects:v117 count:16];
    }

    while (v55);
  }

  v82 = v36;

  [v85 setObject:v52 forKeyedSubscript:@"statusSubscriptions"];
  subscribedStatusKeyPaths = [(RMManagementSource *)self subscribedStatusKeyPaths];
  v60 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [subscribedStatusKeyPaths count]);

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  subscribedStatusKeyPaths2 = [(RMManagementSource *)self subscribedStatusKeyPaths];
  v62 = [subscribedStatusKeyPaths2 countByEnumeratingWithState:&v90 objects:v116 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v91;
    do
    {
      for (ii = 0; ii != v63; ii = ii + 1)
      {
        if (*v91 != v64)
        {
          objc_enumerationMutation(subscribedStatusKeyPaths2);
        }

        reportDetails8 = [*(*(&v90 + 1) + 8 * ii) reportDetails];
        [v60 addObject:reportDetails8];
      }

      v63 = [subscribedStatusKeyPaths2 countByEnumeratingWithState:&v90 objects:v116 count:16];
    }

    while (v63);
  }

  v81 = [NSSortDescriptor sortDescriptorWithKey:@"keyPath" ascending:1];
  v115 = v81;
  v67 = [NSArray arrayWithObjects:&v115 count:1];
  v68 = [v60 sortedArrayUsingDescriptors:v67];
  [v85 setObject:v68 forKeyedSubscript:@"subscribedStatusKeyPaths"];

  metadata = [(RMManagementSource *)self metadata];
  v70 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [metadata count]);

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  metadata2 = [(RMManagementSource *)self metadata];
  v72 = [metadata2 countByEnumeratingWithState:&v86 objects:v114 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v87;
    do
    {
      for (jj = 0; jj != v73; jj = jj + 1)
      {
        if (*v87 != v74)
        {
          objc_enumerationMutation(metadata2);
        }

        v76 = *(*(&v86 + 1) + 8 * jj);
        value = [v76 value];
        v78 = [v76 key];
        [v70 setObject:value forKeyedSubscript:v78];
      }

      v73 = [metadata2 countByEnumeratingWithState:&v86 objects:v114 count:16];
    }

    while (v73);
  }

  [v85 setObject:v70 forKeyedSubscript:@"metadata"];
  v79 = [v85 copy];

  return v79;
}

@end