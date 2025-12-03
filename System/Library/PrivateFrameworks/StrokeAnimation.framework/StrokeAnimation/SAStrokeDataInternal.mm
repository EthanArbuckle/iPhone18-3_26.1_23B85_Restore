@interface SAStrokeDataInternal
- (SAStrokeDataInternal)initWithCharacters:(id)characters strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciations:(id)pronunciations;
@end

@implementation SAStrokeDataInternal

- (SAStrokeDataInternal)initWithCharacters:(id)characters strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciations:(id)pronunciations
{
  if (characters)
  {
    v8 = sub_26BC99938();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26BC99888();
  v11 = v10;
  if (names)
  {
    names = sub_26BC99938();
  }

  if (pronunciations)
  {
    v12 = sub_26BC99938();
  }

  else
  {
    v12 = 0;
  }

  return StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(v8, v9, v11, names, v12);
}

@end