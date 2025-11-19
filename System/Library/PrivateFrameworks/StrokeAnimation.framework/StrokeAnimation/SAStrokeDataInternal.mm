@interface SAStrokeDataInternal
- (SAStrokeDataInternal)initWithCharacters:(id)a3 strokeAnimationRepresention:(id)a4 strokeNames:(id)a5 pronunciations:(id)a6;
@end

@implementation SAStrokeDataInternal

- (SAStrokeDataInternal)initWithCharacters:(id)a3 strokeAnimationRepresention:(id)a4 strokeNames:(id)a5 pronunciations:(id)a6
{
  if (a3)
  {
    v8 = sub_26BC99938();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26BC99888();
  v11 = v10;
  if (a5)
  {
    a5 = sub_26BC99938();
  }

  if (a6)
  {
    v12 = sub_26BC99938();
  }

  else
  {
    v12 = 0;
  }

  return StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(v8, v9, v11, a5, v12);
}

@end