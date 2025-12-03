@interface SIRINLUEntityCandidate
- (SIRINLUEntityCandidate)initWithCoder:(id)coder;
- (SIRINLUEntityCandidate)initWithEntity:(id)entity score:(double)score;
- (SIRINLUEntityCandidate)initWithEntity:(id)entity score:(double)score entityId:(id)id appBundleId:(id)bundleId groupId:(id)groupId annotations:(id)annotations;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUEntityCandidate

- (id)description
{
  printedForm = [(USOSerializedGraph *)self->_entity printedForm];
  v4 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v5 = [SIRINLUPrintUtils indentArray:self->_annotations numSpaces:4];
  v6 = MEMORY[0x1E696AEC0];
  score = self->_score;
  entityId = self->_entityId;
  appBundleId = self->_appBundleId;
  v10 = [(SIRINLURRGroupIdentifier *)self->_groupId description];
  v11 = [v6 stringWithFormat:@"{EntityCandidate\n  entity: \n%@\n  score: %f\n  entityId: \n%@\n  appBundleId: \n%@\n  groupId: \n%@\n  annotations: \n%@\n}", v4, *&score, entityId, appBundleId, v10, v5];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entity = [(SIRINLUEntityCandidate *)self entity];
  [coderCopy encodeObject:entity forKey:@"entity"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [coderCopy encodeObject:v6 forKey:@"score"];
  [coderCopy encodeObject:self->_entityId forKey:@"entityId"];
  [coderCopy encodeObject:self->_appBundleId forKey:@"appBundleId"];
  [coderCopy encodeObject:self->_groupId forKey:@"groupId"];
  [coderCopy encodeObject:self->_annotations forKey:@"annotations"];
}

- (SIRINLUEntityCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SIRINLUEntityCandidate;
  v5 = [(SIRINLUEntityCandidate *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
    entity = v5->_entity;
    v5->_entity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v8 doubleValue];
    v5->_score = v9;
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityId"];
    entityId = v5->_entityId;
    v5->_entityId = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
    groupId = v5->_groupId;
    v5->_groupId = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"annotations"];
    annotations = v5->_annotations;
    v5->_annotations = v19;
  }

  return v5;
}

- (SIRINLUEntityCandidate)initWithEntity:(id)entity score:(double)score entityId:(id)id appBundleId:(id)bundleId groupId:(id)groupId annotations:(id)annotations
{
  entityCopy = entity;
  idCopy = id;
  bundleIdCopy = bundleId;
  groupIdCopy = groupId;
  annotationsCopy = annotations;
  v23.receiver = self;
  v23.super_class = SIRINLUEntityCandidate;
  v19 = [(SIRINLUEntityCandidate *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_entity, entity);
    v20->_score = score;
    objc_storeStrong(&v20->_entityId, id);
    objc_storeStrong(&v20->_appBundleId, bundleId);
    objc_storeStrong(&v20->_groupId, groupId);
    objc_storeStrong(&v20->_annotations, annotations);
  }

  return v20;
}

- (SIRINLUEntityCandidate)initWithEntity:(id)entity score:(double)score
{
  entityCopy = entity;
  v15.receiver = self;
  v15.super_class = SIRINLUEntityCandidate;
  v8 = [(SIRINLUEntityCandidate *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entity, entity);
    v9->_score = score;
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