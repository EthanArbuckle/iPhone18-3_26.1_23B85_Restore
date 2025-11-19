@interface SIRINLUEntityCandidate
- (SIRINLUEntityCandidate)initWithCoder:(id)a3;
- (SIRINLUEntityCandidate)initWithEntity:(id)a3 score:(double)a4;
- (SIRINLUEntityCandidate)initWithEntity:(id)a3 score:(double)a4 entityId:(id)a5 appBundleId:(id)a6 groupId:(id)a7 annotations:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUEntityCandidate

- (id)description
{
  v3 = [(USOSerializedGraph *)self->_entity printedForm];
  v4 = [SIRINLUPrintUtils indentLines:v3 numSpaces:4];

  v5 = [SIRINLUPrintUtils indentArray:self->_annotations numSpaces:4];
  v6 = MEMORY[0x1E696AEC0];
  score = self->_score;
  entityId = self->_entityId;
  appBundleId = self->_appBundleId;
  v10 = [(SIRINLURRGroupIdentifier *)self->_groupId description];
  v11 = [v6 stringWithFormat:@"{EntityCandidate\n  entity: \n%@\n  score: %f\n  entityId: \n%@\n  appBundleId: \n%@\n  groupId: \n%@\n  annotations: \n%@\n}", v4, *&score, entityId, appBundleId, v10, v5];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUEntityCandidate *)self entity];
  [v4 encodeObject:v5 forKey:@"entity"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v4 encodeObject:v6 forKey:@"score"];
  [v4 encodeObject:self->_entityId forKey:@"entityId"];
  [v4 encodeObject:self->_appBundleId forKey:@"appBundleId"];
  [v4 encodeObject:self->_groupId forKey:@"groupId"];
  [v4 encodeObject:self->_annotations forKey:@"annotations"];
}

- (SIRINLUEntityCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SIRINLUEntityCandidate;
  v5 = [(SIRINLUEntityCandidate *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
    entity = v5->_entity;
    v5->_entity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v8 doubleValue];
    v5->_score = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityId"];
    entityId = v5->_entityId;
    v5->_entityId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
    groupId = v5->_groupId;
    v5->_groupId = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"annotations"];
    annotations = v5->_annotations;
    v5->_annotations = v19;
  }

  return v5;
}

- (SIRINLUEntityCandidate)initWithEntity:(id)a3 score:(double)a4 entityId:(id)a5 appBundleId:(id)a6 groupId:(id)a7 annotations:(id)a8
{
  v22 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = SIRINLUEntityCandidate;
  v19 = [(SIRINLUEntityCandidate *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_entity, a3);
    v20->_score = a4;
    objc_storeStrong(&v20->_entityId, a5);
    objc_storeStrong(&v20->_appBundleId, a6);
    objc_storeStrong(&v20->_groupId, a7);
    objc_storeStrong(&v20->_annotations, a8);
  }

  return v20;
}

- (SIRINLUEntityCandidate)initWithEntity:(id)a3 score:(double)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = SIRINLUEntityCandidate;
  v8 = [(SIRINLUEntityCandidate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entity, a3);
    v9->_score = a4;
    entityId = v9->_entityId;
    v9->_entityId = &stru_1F3FA57D0;

    appBundleId = v9->_appBundleId;
    v9->_appBundleId = &stru_1F3FA57D0;

    groupId = v9->_groupId;
    v9->_groupId = 0;

    annotations = v9->_annotations;
    v9->_annotations = 0;
  }

  return v9;
}

@end