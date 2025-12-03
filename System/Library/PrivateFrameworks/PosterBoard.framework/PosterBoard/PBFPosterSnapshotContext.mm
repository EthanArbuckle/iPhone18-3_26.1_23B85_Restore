@interface PBFPosterSnapshotContext
+ (id)snapshotContextForDisplayContext:(id)context definition:(id)definition;
+ (id)snapshotContextsForRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (PBFPosterSnapshotContext)initWithDisplayContext:(id)context definition:(id)definition;
- (id)description;
- (unint64_t)hash;
@end

@implementation PBFPosterSnapshotContext

+ (id)snapshotContextsForRequest:(id)request
{
  requestCopy = request;
  definitions = [requestCopy definitions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PBFPosterSnapshotContext_snapshotContextsForRequest___block_invoke;
  v8[3] = &unk_2782C8980;
  v9 = requestCopy;
  v5 = requestCopy;
  v6 = [definitions bs_mapNoNulls:v8];

  return v6;
}

PBFPosterSnapshotContext *__55__PBFPosterSnapshotContext_snapshotContextsForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PBFPosterSnapshotContext alloc];
  v5 = [*(a1 + 32) displayContext];
  v6 = [(PBFPosterSnapshotContext *)v4 initWithDisplayContext:v5 definition:v3];

  return v6;
}

+ (id)snapshotContextForDisplayContext:(id)context definition:(id)definition
{
  definitionCopy = definition;
  contextCopy = context;
  v7 = [[PBFPosterSnapshotContext alloc] initWithDisplayContext:contextCopy definition:definitionCopy];

  return v7;
}

- (PBFPosterSnapshotContext)initWithDisplayContext:(id)context definition:(id)definition
{
  contextCopy = context;
  definitionCopy = definition;
  v12.receiver = self;
  v12.super_class = PBFPosterSnapshotContext;
  v9 = [(PBFPosterSnapshotContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v9->_displayContext, context);
    objc_storeStrong(&v10->_definition, definition);
  }

  return v10;
}

- (unint64_t)hash
{
  result = self->_cachedHash;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PBFDisplayContext *)self->_displayContext hash];
    v5 = [(PRPosterSnapshotDefinition *)self->_definition hash];
    v6 = 0xBF58476D1CE4E5B9 * (v5 ^ v4 ^ ((v5 ^ v4) >> 30));
    result = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    self->_cachedHash = result;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && ([(PBFPosterSnapshotContext *)v9 displayContext], v10 = objc_claimAutoreleasedReturnValue(), [(PBFPosterSnapshotContext *)self displayContext], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12))
    {
      definition = [(PBFPosterSnapshotContext *)v9 definition];
      definition2 = [(PBFPosterSnapshotContext *)self definition];
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayContext withName:@"displayContext"];
  v5 = [v3 appendObject:self->_definition withName:@"definition"];
  build = [v3 build];

  return build;
}

@end