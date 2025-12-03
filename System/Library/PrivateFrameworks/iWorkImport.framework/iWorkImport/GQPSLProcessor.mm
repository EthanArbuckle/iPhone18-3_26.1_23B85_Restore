@interface GQPSLProcessor
- (BOOL)go;
@end

@implementation GQPSLProcessor

- (BOOL)go
{
  v8.receiver = self;
  v8.super_class = GQPSLProcessor;
  v3 = [(GQPProcessor *)&v8 go];
  if (self->mGenerator)
  {
    generatorBeginWasCalled = [(GQSDocument *)self->super.mDocumentState generatorBeginWasCalled];
    if ((generatorBeginWasCalled & v3) == 1)
    {
      v5 = [(objc_class *)self->mGenerator endPublication:[(GQSDocument *)self->super.mDocumentState root] state:self->super.mDocumentState];
      if (!v5)
      {
        return v5;
      }

      goto LABEL_7;
    }

    v3 &= generatorBeginWasCalled ^ 1;
  }

  if (!v3)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_7:
  if (self->super.mOutputPreviewRequest && (v6 = [(GQSDocument *)self->super.mDocumentState outputBundle], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOBYTE(v5) = [v6 giveOutputToPreviewRequest:self->super.mOutputPreviewRequest];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end