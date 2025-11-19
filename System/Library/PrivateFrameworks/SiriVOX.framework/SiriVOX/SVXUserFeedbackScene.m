@interface SVXUserFeedbackScene
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXUserFeedbackScene)initWithCoder:(id)a3;
- (SVXUserFeedbackScene)initWithIdentifier:(id)a3 duration:(double)a4 nodes:(id)a5;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXUserFeedbackScene

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"SVXUserFeedbackScene::identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v6 encodeObject:v5 forKey:@"SVXUserFeedbackScene::duration"];

  [v6 encodeObject:self->_nodes forKey:@"SVXUserFeedbackScene::nodes"];
}

- (SVXUserFeedbackScene)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackScene::identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXUserFeedbackScene::duration"];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"SVXUserFeedbackScene::nodes"];

  v13 = [(SVXUserFeedbackScene *)self initWithIdentifier:v5 duration:v12 nodes:v8];
  return v13;
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
      [(SVXUserFeedbackScene *)v5 duration];
      if (duration == v7)
      {
        v9 = [(SVXUserFeedbackScene *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v9 || [(NSString *)identifier isEqual:v9])
        {
          v11 = [(SVXUserFeedbackScene *)v5 nodes];
          nodes = self->_nodes;
          v8 = nodes == v11 || [(NSSet *)nodes isEqual:v11];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXUserFeedbackScene;
  v5 = [(SVXUserFeedbackScene *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, duration = %f, nodes = %@}", v5, self->_identifier, *&self->_duration, self->_nodes];

  return v6;
}

- (SVXUserFeedbackScene)initWithIdentifier:(id)a3 duration:(double)a4 nodes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SVXUserFeedbackScene;
  v10 = [(SVXUserFeedbackScene *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_duration = a4;
    v13 = [v9 copy];
    nodes = v10->_nodes;
    v10->_nodes = v13;
  }

  return v10;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXUserFeedbackSceneMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXUserFeedbackSceneMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXUserFeedbackScene *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXUserFeedbackSceneMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXUserFeedbackSceneMutation *)v4 generate];

  return v5;
}

@end