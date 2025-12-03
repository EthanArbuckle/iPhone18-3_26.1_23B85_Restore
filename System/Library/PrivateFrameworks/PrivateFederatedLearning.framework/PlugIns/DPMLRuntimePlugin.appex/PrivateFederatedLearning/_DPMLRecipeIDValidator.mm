@interface _DPMLRecipeIDValidator
+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error;
+ (id)sharedInstanceWithError:(id *)error;
- (_DPMLRecipeIDValidator)initWithAssociation:(id)association;
@end

@implementation _DPMLRecipeIDValidator

- (_DPMLRecipeIDValidator)initWithAssociation:(id)association
{
  associationCopy = association;
  v9.receiver = self;
  v9.super_class = _DPMLRecipeIDValidator;
  v6 = [(_DPMLRecipeIDValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_association, association);
  }

  return v7;
}

+ (id)sharedInstanceWithError:(id *)error
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AAAC;
  block[3] = &unk_10002C6E8;
  block[4] = self;
  if (qword_100039568 == -1)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_100039568, block);
  if (error)
  {
LABEL_3:
    *error = qword_100039560;
  }

LABEL_4:
  v4 = qword_100039558;

  return v4;
}

+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error
{
  identifierCopy = identifier;
  namespaceIdentifierCopy = namespaceIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
LABEL_10:
      [_DPMLRuntimeError errorWithCode:300 description:v14];
      *error = v15 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [_DPMLRecipeIDValidator sharedInstanceWithError:error];
  v10 = v9;
  if (v9)
  {
    association = [v9 association];
    v12 = [association objectForKey:namespaceIdentifierCopy];

    if ([v12 containsObject:identifierCopy])
    {
      v13 = 1;
    }

    else
    {
      v16 = [identifierCopy stringByReplacingOccurrencesOfString:@"fedstats:" withString:&stru_10002D560];
      v13 = [v12 containsObject:v16];
    }

    v15 = [NSNumber numberWithBool:v13];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

@end