@interface PXStoryAutoEditMomentRecipe
- ($7B05257DCED3654557744F96476E9D8A)incomingTransition;
- ($7B05257DCED3654557744F96476E9D8A)innerTransition;
- (PXStoryAutoEditMomentRecipe)init;
- (PXStoryAutoEditMomentRecipe)initWithRecipeType:(unint64_t)type incomingTransition:(id *)transition innerTransition:(id *)innerTransition motion:(id *)motion;
- (id)description;
@end

@implementation PXStoryAutoEditMomentRecipe

- ($7B05257DCED3654557744F96476E9D8A)innerTransition
{
  v3 = *(&self[2].var2 + 8);
  *&retstr->var0 = *&self[2].var1;
  retstr->var2 = v3;
  return self;
}

- ($7B05257DCED3654557744F96476E9D8A)incomingTransition
{
  v3 = *(&self[1].var2 + 8);
  *&retstr->var0 = *&self[1].var1;
  retstr->var2 = v3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  recipeType = self->_recipeType;
  if (recipeType > 8)
  {
    v6 = @"??";
  }

  else
  {
    v6 = off_1E7732050[recipeType];
  }

  v7 = v6;
  [(PXStoryAutoEditMomentRecipe *)self incomingTransition];
  v8 = PXStoryAutoEditClipTransitionInfoDescription(v13);
  [(PXStoryAutoEditMomentRecipe *)self innerTransition];
  v9 = PXStoryAutoEditClipTransitionInfoDescription(v13);
  [(PXStoryAutoEditMomentRecipe *)self motion];
  v10 = PXStoryAutoEditClipMotionInfoDescription(v13);
  v11 = [v3 stringWithFormat:@"<%@: %p type:%@, incoming:%@, inner:%@, motion:%@", v4, self, v7, v8, v9, v10];;

  return v11;
}

- (PXStoryAutoEditMomentRecipe)initWithRecipeType:(unint64_t)type incomingTransition:(id *)transition innerTransition:(id *)innerTransition motion:(id *)motion
{
  v14.receiver = self;
  v14.super_class = PXStoryAutoEditMomentRecipe;
  result = [(PXStoryAutoEditMomentRecipe *)&v14 init];
  if (result)
  {
    result->_recipeType = type;
    v11 = *&transition->var0;
    result->_incomingTransition.settings = transition->var2;
    *&result->_incomingTransition.kind = v11;
    v12 = *&innerTransition->var0;
    result->_innerTransition.settings = innerTransition->var2;
    *&result->_innerTransition.kind = v12;
    v13 = *&motion->var0;
    result->_motion.settings.pan.relativeMotion = motion->var1.var0.var1;
    *&result->_motion.style = v13;
  }

  return result;
}

- (PXStoryAutoEditMomentRecipe)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAutoEditClip.m" lineNumber:417 description:{@"%s is not available as initializer", "-[PXStoryAutoEditMomentRecipe init]"}];

  abort();
}

@end