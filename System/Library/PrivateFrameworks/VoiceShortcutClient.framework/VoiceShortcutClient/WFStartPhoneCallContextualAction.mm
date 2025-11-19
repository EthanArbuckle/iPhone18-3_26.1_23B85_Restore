@interface WFStartPhoneCallContextualAction
+ (void)getTopHitContextualActionsWithLimit:(int64_t)a3 completion:(id)a4;
- (WFStartPhoneCallContextualAction)initWithPerson:(id)a3 serializedRepresentation:(id)a4 namedQueryInfo:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
@end

@implementation WFStartPhoneCallContextualAction

- (WFStartPhoneCallContextualAction)initWithPerson:(id)a3 serializedRepresentation:(id)a4 namedQueryInfo:(id)a5
{
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v40 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"WFStartPhoneCallContextualAction.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"person"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:self file:@"WFStartPhoneCallContextualAction.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"serializedRepresentation"}];

LABEL_3:
  v11 = [v9 nameComponents];
  v12 = [v11 givenName];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v9 displayName];
  }

  v15 = v14;

  if (![v15 length])
  {
    v16 = [v9 displayName];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = [v9 personHandle];
      v18 = [v19 value];

      v15 = v19;
    }

    v15 = v18;
  }

  v41 = v10;
  v20 = [[WFContextualActionParameter alloc] initWithType:@"WFContactContentItem" displayString:v15 wfParameterKey:@"WFCallContact" wfSerializedRepresentation:v10];
  v21 = [v9 image];
  v22 = [v21 _imageData];

  v23 = [WFContextualActionIcon alloc];
  v24 = v23;
  if (v22)
  {
    v25 = [v9 image];
    v26 = [v25 _imageData];
    v27 = [(WFContextualActionIcon *)v24 initWithImageData:v26 scale:1 displayStyle:2.0];
  }

  else
  {
    v27 = [(WFContextualActionIcon *)v23 initWithSystemName:@"person.fill"];
  }

  v43[0] = v20;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v29 = MEMORY[0x1E696AEC0];
  v30 = WFLocalizedString(@"Call %@");
  v31 = [v29 localizedStringWithFormat:v30, v15];
  WFLocalizedString(@"Start Call");
  v32 = v39 = v20;
  v33 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:@"com.apple.mobilephone"];
  v42.receiver = self;
  v42.super_class = WFStartPhoneCallContextualAction;
  v34 = [(WFTopHitItemContextualAction *)&v42 initWithItem:v9 identifier:@"com.apple.mobilephone.call" wfActionIdentifier:@"com.apple.mobilephone.call" associatedAppBundleIdentifier:@"com.apple.mobilephone" parameters:v28 displayString:v31 title:v32 subtitle:v15 primaryColor:4 icon:v27 accessoryIcon:v33 namedQueryInfo:v40];

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)_staticDisplayStringForDecoding
{
  v2 = [(WFStartPhoneCallContextualAction *)self person];
  v3 = [v2 nameComponents];
  v4 = [v3 givenName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 displayName];
  }

  v7 = v6;

  if (![v7 length])
  {
    v8 = [v2 displayName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v2 personHandle];
      v10 = [v11 value];

      v7 = v11;
    }

    v7 = v10;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = WFLocalizedString(@"Call %@");
  v14 = [v12 localizedStringWithFormat:v13, v7];

  return v14;
}

- (id)uniqueIdentifier
{
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFStartPhoneCallContextualAction *)self person];
  v5 = [v4 contactIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v3 stringByAppendingFormat:@":%@", v5];
  }

  else
  {
    v8 = [(WFStartPhoneCallContextualAction *)self person];
    v9 = [v8 displayName];
    v7 = [v3 stringByAppendingFormat:@":%@", v9];
  }

  return v7;
}

+ (void)getTopHitContextualActionsWithLimit:(int64_t)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 errorWithDomain:@"TopHitItemContextualActionError" code:0 userInfo:0];
  (*(a4 + 2))(v6, 0, v7);
}

@end