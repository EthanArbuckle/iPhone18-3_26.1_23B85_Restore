@interface SVXUserFeedbackNode
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXUserFeedbackNode)initWithCoder:(id)a3;
- (SVXUserFeedbackNode)initWithIdentifier:(id)a3 duration:(double)a4 feedback:(id)a5 dependentNodes:(id)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXUserFeedbackNode

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"SVXUserFeedbackNode::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v6 encodeObject:v5 forKey:@"SVXUserFeedbackNode::duration"];

  [v6 encodeObject:self->_feedback forKey:@"SVXUserFeedbackNode::feedback"];
  [v6 encodeObject:self->_dependentNodes forKey:@"SVXUserFeedbackNode::dependentNodes"];
}

- (SVXUserFeedbackNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::duration"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackNode::feedback"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"SVXUserFeedbackNode::dependentNodes"];

  v14 = [(SVXUserFeedbackNode *)self initWithIdentifier:v5 duration:v9 feedback:v13 dependentNodes:v8];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      duration = self->_duration;
      [(SVXUserFeedbackNode *)v5 duration];
      if (duration == v7)
      {
        v9 = [(SVXUserFeedbackNode *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v9 || [(NSString *)identifier isEqual:v9])
        {
          v11 = [(SVXUserFeedbackNode *)v5 feedback];
          feedback = self->_feedback;
          if (feedback == v11 || [(SVXUserFeedback *)feedback isEqual:v11])
          {
            v13 = [(SVXUserFeedbackNode *)v5 dependentNodes];
            dependentNodes = self->_dependentNodes;
            v8 = dependentNodes == v13 || [(NSSet *)dependentNodes isEqual:v13];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackNode;
  v5 = [(SVXUserFeedbackNode *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, duration = %f, feedback = %@, dependentNodes = %@}", v5, self->_identifier, *&self->_duration, self->_feedback, self->_dependentNodes];

  return v6;
}

- (SVXUserFeedbackNode)initWithIdentifier:(id)a3 duration:(double)a4 feedback:(id)a5 dependentNodes:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SVXUserFeedbackNode;
  v13 = [(SVXUserFeedbackNode *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_duration = a4;
    v16 = [v11 copy];
    feedback = v13->_feedback;
    v13->_feedback = v16;

    v18 = [v12 copy];
    dependentNodes = v13->_dependentNodes;
    v13->_dependentNodes = v18;
  }

  return v13;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXUserFeedbackNodeMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXUserFeedbackNodeMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXUserFeedbackNode *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXUserFeedbackNodeMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXUserFeedbackNodeMutation *)v4 generate];

  return v5;
}

@end