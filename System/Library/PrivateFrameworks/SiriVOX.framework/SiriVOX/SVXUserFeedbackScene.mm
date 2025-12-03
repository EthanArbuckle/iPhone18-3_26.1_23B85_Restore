@interface SVXUserFeedbackScene
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXUserFeedbackScene)initWithCoder:(id)coder;
- (SVXUserFeedbackScene)initWithIdentifier:(id)identifier duration:(double)duration nodes:(id)nodes;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXUserFeedbackScene

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SVXUserFeedbackScene::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [coderCopy encodeObject:v5 forKey:@"SVXUserFeedbackScene::duration"];

  [coderCopy encodeObject:self->_nodes forKey:@"SVXUserFeedbackScene::nodes"];
}

- (SVXUserFeedbackScene)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackScene::identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackScene::duration"];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"SVXUserFeedbackScene::nodes"];

  v13 = [(SVXUserFeedbackScene *)self initWithIdentifier:v5 duration:v12 nodes:v8];
  return v13;
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
      [(SVXUserFeedbackScene *)v5 duration];
      if (duration == v7)
      {
        identifier = [(SVXUserFeedbackScene *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
        {
          nodes = [(SVXUserFeedbackScene *)v5 nodes];
          nodes = self->_nodes;
          v8 = nodes == nodes || [(NSSet *)nodes isEqual:nodes];
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
  v6 = v3 ^ [(NSSet *)self->_nodes hash];

  return v5 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackScene;
  v5 = [(SVXUserFeedbackScene *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, duration = %f, nodes = %@}", v5, self->_identifier, *&self->_duration, self->_nodes];

  return v6;
}

- (SVXUserFeedbackScene)initWithIdentifier:(id)identifier duration:(double)duration nodes:(id)nodes
{
  identifierCopy = identifier;
  nodesCopy = nodes;
  v16.receiver = self;
  v16.super_class = SVXUserFeedbackScene;
  v10 = [(SVXUserFeedbackScene *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_duration = duration;
    v13 = [nodesCopy copy];
    nodes = v10->_nodes;
    v10->_nodes = v13;
  }

  return v10;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXUserFeedbackSceneMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXUserFeedbackSceneMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXUserFeedbackScene *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXUserFeedbackSceneMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXUserFeedbackSceneMutation *)v4 generate];

  return generate;
}

@end