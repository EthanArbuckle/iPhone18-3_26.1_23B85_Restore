@interface SBSAAnimatedTransitionResultDescription
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAAnimatedTransitionResultDescription)initWithAnimatedTransitionResultDescription:(id)description;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAAnimatedTransitionResultDescription

- (SBSAAnimatedTransitionResultDescription)initWithAnimatedTransitionResultDescription:(id)description
{
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = SBSAAnimatedTransitionResultDescription;
  v5 = [(SBSAAnimatedTransitionResultDescription *)&v12 init];
  if (v5)
  {
    animatedTransitionIdentifier = [descriptionCopy animatedTransitionIdentifier];
    animatedTransitionIdentifier = v5->_animatedTransitionIdentifier;
    v5->_animatedTransitionIdentifier = animatedTransitionIdentifier;

    associatedInterfaceElementPropertyIdentity = [descriptionCopy associatedInterfaceElementPropertyIdentity];
    associatedInterfaceElementPropertyIdentity = v5->_associatedInterfaceElementPropertyIdentity;
    v5->_associatedInterfaceElementPropertyIdentity = associatedInterfaceElementPropertyIdentity;

    [descriptionCopy targetedMilestone];
    v5->_targetedMilestone = v10;
    v5->_transitionEndTargeted = [descriptionCopy isTransitionEndTargeted];
    v5->_finished = [descriptionCopy finished];
    v5->_retargeted = [descriptionCopy retargeted];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  animatedTransitionIdentifier = self->_animatedTransitionIdentifier;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke;
  v35[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v36 = v7;
  v8 = [v5 appendObject:animatedTransitionIdentifier counterpart:v35];
  associatedInterfaceElementPropertyIdentity = self->_associatedInterfaceElementPropertyIdentity;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke_2;
  v33[3] = &unk_2783ACDB8;
  v10 = v7;
  v34 = v10;
  v11 = [v8 appendObject:associatedInterfaceElementPropertyIdentity counterpart:v33];
  targetedMilestone = self->_targetedMilestone;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke_3;
  v31[3] = &unk_2783ACE08;
  v13 = v10;
  v32 = v13;
  v14 = [v11 appendCGFloat:v31 counterpart:targetedMilestone];
  transitionEndTargeted = self->_transitionEndTargeted;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke_4;
  v29[3] = &unk_2783ACE58;
  v16 = v13;
  v30 = v16;
  v17 = [v14 appendBool:transitionEndTargeted counterpart:v29];
  finished = self->_finished;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke_5;
  v27[3] = &unk_2783ACE58;
  v19 = v16;
  v28 = v19;
  v20 = [v17 appendBool:finished counterpart:v27];
  retargeted = self->_retargeted;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__SBSAAnimatedTransitionResultDescription_isEqual___block_invoke_6;
  v25[3] = &unk_2783ACE58;
  v26 = v19;
  v22 = v19;
  v23 = [v20 appendBool:retargeted counterpart:v25];
  LOBYTE(retargeted) = [v23 isEqual];

  return retargeted;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_animatedTransitionIdentifier];
  v5 = [v4 appendObject:self->_associatedInterfaceElementPropertyIdentity];
  v6 = [v5 appendCGFloat:self->_targetedMilestone];
  v7 = [v6 appendBool:self->_transitionEndTargeted];
  v8 = [v7 appendBool:self->_finished];
  v9 = [v8 appendBool:self->_retargeted];
  v10 = [v9 hash];

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  animatedTransitionIdentifier = self->_animatedTransitionIdentifier;
  associatedInterfaceElementPropertyIdentity = self->_associatedInterfaceElementPropertyIdentity;
  transitionEndTargeted = self->_transitionEndTargeted;
  if (transitionEndTargeted)
  {
    v8 = @"transition end";
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_targetedMilestone];
  }

  v9 = NSStringFromBOOL();
  v10 = NSStringFromBOOL();
  v11 = NSStringFromBOOL();
  v12 = [v3 stringWithFormat:@"<%@: %p animatedTransitionIdentifier: %@; associatedInterfaceElementPropertyIdentity: %@; targetedMilestone: %@, transitionEndTargeted: %@; finished: %@; retargeted: %@>", v4, self, animatedTransitionIdentifier, associatedInterfaceElementPropertyIdentity, v8, v9, v10, v11];;

  if (!transitionEndTargeted)
  {
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithAnimatedTransitionResultDescription:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAAnimatedTransitionResultDescription *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end