@interface SVXUserFeedbackNode
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXUserFeedbackNode)initWithCoder:(id)coder;
- (SVXUserFeedbackNode)initWithIdentifier:(id)identifier duration:(double)duration feedback:(id)feedback dependentNodes:(id)nodes;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXUserFeedbackNode

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SVXUserFeedbackNode::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [coderCopy encodeObject:v5 forKey:@"SVXUserFeedbackNode::duration"];

  [coderCopy encodeObject:self->_feedback forKey:@"SVXUserFeedbackNode::feedback"];
  [coderCopy encodeObject:self->_dependentNodes forKey:@"SVXUserFeedbackNode::dependentNodes"];
}

- (SVXUserFeedbackNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::duration"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::feedback"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"SVXUserFeedbackNode::dependentNodes"];

  v14 = [(SVXUserFeedbackNode *)self initWithIdentifier:v5 duration:v9 feedback:v13 dependentNodes:v8];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      duration = self->_duration;
      [(SVXUserFeedbackNode *)v5 duration];
      if (duration == v7)
      {
        identifier = [(SVXUserFeedbackNode *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
        {
          feedback = [(SVXUserFeedbackNode *)v5 feedback];
          feedback = self->_feedback;
          if (feedback == feedback || [(SVXUserFeedback *)feedback isEqual:feedback])
          {
            dependentNodes = [(SVXUserFeedbackNode *)v5 dependentNodes];
            dependentNodes = self->_dependentNodes;
            v8 = dependentNodes == dependentNodes || [(NSSet *)dependentNodes isEqual:dependentNodes];
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  v5 = [v4 hash];
  v6 = v3 ^ [(SVXUserFeedback *)self->_feedback hash];
  v7 = v6 ^ [(NSSet *)self->_dependentNodes hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackNode;
  v5 = [(SVXUserFeedbackNode *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, duration = %f, feedback = %@, dependentNodes = %@}", v5, self->_identifier, *&self->_duration, self->_feedback, self->_dependentNodes];

  return v6;
}

- (SVXUserFeedbackNode)initWithIdentifier:(id)identifier duration:(double)duration feedback:(id)feedback dependentNodes:(id)nodes
{
  identifierCopy = identifier;
  feedbackCopy = feedback;
  nodesCopy = nodes;
  v21.receiver = self;
  v21.super_class = SVXUserFeedbackNode;
  v13 = [(SVXUserFeedbackNode *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_duration = duration;
    v16 = [feedbackCopy copy];
    feedback = v13->_feedback;
    v13->_feedback = v16;

    v18 = [nodesCopy copy];
    dependentNodes = v13->_dependentNodes;
    v13->_dependentNodes = v18;
  }

  return v13;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXUserFeedbackNodeMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXUserFeedbackNodeMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXUserFeedbackNode *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXUserFeedbackNodeMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXUserFeedbackNodeMutation *)v4 generate];

  return generate;
}

@end