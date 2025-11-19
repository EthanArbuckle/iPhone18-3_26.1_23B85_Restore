@interface WFFaceTimeContextualAction
- (WFFaceTimeContextualAction)initWithPerson:(id)a3 type:(unint64_t)a4 callTypeSerializedRepresentation:(id)a5 personSerializedRepresentation:(id)a6 namedQueryInfo:(id)a7;
- (id)_staticDisplayStringForDecoding;
- (id)uniqueIdentifier;
@end

@implementation WFFaceTimeContextualAction

- (WFFaceTimeContextualAction)initWithPerson:(id)a3 type:(unint64_t)a4 callTypeSerializedRepresentation:(id)a5 personSerializedRepresentation:(id)a6 namedQueryInfo:(id)a7
{
  v61[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v54 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_28:
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"callTypeSerializedRepresentation"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  v47 = [MEMORY[0x1E696AAA8] currentHandler];
  [v47 handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"person"}];

  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_29:
  v49 = [MEMORY[0x1E696AAA8] currentHandler];
  [v49 handleFailureInMethod:a2 object:self file:@"WFFaceTimeContextualAction.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"personSerializedRepresentation"}];

LABEL_4:
  v15 = @"Video";
  v52 = a4;
  if (a4 == 1)
  {
    v15 = @"Audio";
  }

  v16 = v15;
  v17 = WFLocalizedString(v16);
  v18 = [v12 nameComponents];
  v19 = [v18 givenName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v12 displayName];
  }

  v22 = v21;

  if (![v22 length])
  {
    v23 = [v12 displayName];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      [v12 personHandle];
      v27 = v26 = v17;
      v25 = [v27 value];

      v22 = v27;
      v17 = v26;
    }

    v22 = v25;
  }

  v59 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:v17 wfParameterKey:@"WFFaceTimeType" wfSerializedRepresentation:v13];
  v55 = v14;
  v28 = [[WFContextualActionParameter alloc] initWithType:@"WFContactContentItem" displayString:v22 wfParameterKey:@"WFFaceTimeContact" wfSerializedRepresentation:v14];
  v29 = [v12 image];
  v30 = [v29 _imageData];

  if (v30)
  {
    v31 = [WFContextualActionIcon alloc];
    v32 = [v12 image];
    v33 = [v32 _imageData];
    v51 = [(WFContextualActionIcon *)v31 initWithImageData:v33 scale:1 displayStyle:2.0];
  }

  else
  {
    v51 = 0;
  }

  v56 = v13;
  if (v52 == 1)
  {
    v35 = +[WFDevice currentDevice];
    v36 = [v35 idiom];

    if (v36 == 1)
    {
      v37 = [WFContextualActionIcon iconWithImageName:@"Phone"];
LABEL_25:
      v38 = v37;
      goto LABEL_26;
    }

    v34 = @"com.apple.mobilephone";
LABEL_24:
    v37 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:v34];
    goto LABEL_25;
  }

  if (!v52)
  {
    v34 = @"com.apple.facetime";
    goto LABEL_24;
  }

  v38 = 0;
LABEL_26:
  v39 = [@"com.apple.facetime.facetime" stringByAppendingFormat:@":%@", v16];
  v61[0] = v59;
  v61[1] = v28;
  v50 = v28;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v53 = v16;
  v41 = MEMORY[0x1E696AEC0];
  v42 = WFLocalizedString(@"%1$@ Call %2$@");
  v43 = [v41 localizedStringWithFormat:v42, v17, v22];
  v44 = WFLocalizedString(@"FaceTime");
  v60.receiver = self;
  v60.super_class = WFFaceTimeContextualAction;
  v58 = [(WFTopHitItemContextualAction *)&v60 initWithItem:v12 identifier:v39 wfActionIdentifier:@"com.apple.facetime.facetime" associatedAppBundleIdentifier:@"com.apple.facetime" parameters:v40 displayString:v43 title:v44 subtitle:v22 primaryColor:4 icon:v51 accessoryIcon:v38 namedQueryInfo:v54];

  v45 = *MEMORY[0x1E69E9840];
  return v58;
}

- (id)_staticDisplayStringForDecoding
{
  v2 = [(WFFaceTimeContextualAction *)self person];
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

  if ([v7 length])
  {
    if (v7)
    {
LABEL_6:
      v8 = MEMORY[0x1E696AEC0];
      v9 = WFLocalizedString(@"Call %@");
      v10 = [v8 localizedStringWithFormat:v9, v7];

      goto LABEL_12;
    }
  }

  else
  {
    v11 = [v2 displayName];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = [v2 personHandle];
      v13 = [v14 value];

      v7 = v14;
    }

    v7 = v13;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v10 = WFLocalizedString(@"Call");
LABEL_12:

  return v10;
}

- (id)uniqueIdentifier
{
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFFaceTimeContextualAction *)self person];
  v5 = [v4 contactIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v3 stringByAppendingFormat:@":%@", v5];
  }

  else
  {
    v8 = [(WFFaceTimeContextualAction *)self person];
    v9 = [v8 displayName];
    v7 = [v3 stringByAppendingFormat:@":%@", v9];
  }

  return v7;
}

@end