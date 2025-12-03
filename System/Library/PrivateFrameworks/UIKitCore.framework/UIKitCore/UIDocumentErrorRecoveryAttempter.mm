@interface UIDocumentErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (BOOL)attemptSilentRecoveryFromError:(id)error error:(id *)a4;
- (UIDocumentErrorRecoveryAttempter)initWithDocument:(id)document silentRecoveryOptionIndex:(unint64_t)index appModalRecoveryAttempter:(id)attempter recoveryCanceler:(id)canceler;
- (UIDocumentErrorRecoveryAttempter)initWithDocument:(id)document wrappedRecoveryAttempter:(id)attempter;
- (void)cancelRecovery;
- (void)dealloc;
@end

@implementation UIDocumentErrorRecoveryAttempter

- (UIDocumentErrorRecoveryAttempter)initWithDocument:(id)document wrappedRecoveryAttempter:(id)attempter
{
  documentCopy = document;
  attempterCopy = attempter;
  v12.receiver = self;
  v12.super_class = UIDocumentErrorRecoveryAttempter;
  v9 = [(UIDocumentErrorRecoveryAttempter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, document);
    objc_storeStrong(&v10->_wrappedRecoveryAttempter, attempter);
  }

  return v10;
}

- (UIDocumentErrorRecoveryAttempter)initWithDocument:(id)document silentRecoveryOptionIndex:(unint64_t)index appModalRecoveryAttempter:(id)attempter recoveryCanceler:(id)canceler
{
  documentCopy = document;
  attempterCopy = attempter;
  cancelerCopy = canceler;
  v21.receiver = self;
  v21.super_class = UIDocumentErrorRecoveryAttempter;
  v14 = [(UIDocumentErrorRecoveryAttempter *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_document, document);
    v15->_silentRecoveryOptionIndex = index;
    v16 = [attempterCopy copy];
    appModalRecoveryAttempter = v15->_appModalRecoveryAttempter;
    v15->_appModalRecoveryAttempter = v16;

    v18 = [cancelerCopy copy];
    recoveryCancelerOrNil = v15->_recoveryCancelerOrNil;
    v15->_recoveryCancelerOrNil = v18;
  }

  return v15;
}

- (void)dealloc
{
  if ((*&self->_errorRecoveryAttempterFlags & 1) == 0)
  {
    [(UIDocumentErrorRecoveryAttempter *)self cancelRecovery];
  }

  v3.receiver = self;
  v3.super_class = UIDocumentErrorRecoveryAttempter;
  [(UIDocumentErrorRecoveryAttempter *)&v3 dealloc];
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  errorCopy = error;
  *&self->_errorRecoveryAttempterFlags |= 1u;
  wrappedRecoveryAttempter = self->_wrappedRecoveryAttempter;
  if (wrappedRecoveryAttempter)
  {
    if ([wrappedRecoveryAttempter attemptRecoveryFromError:errorCopy optionIndex:index])
    {
      continuerOrNil = self->_continuerOrNil;
      if (continuerOrNil)
      {
        continuerOrNil[2]();
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = (*(self->_appModalRecoveryAttempter + 2))();
  }

  return v9;
}

- (BOOL)attemptSilentRecoveryFromError:(id)error error:(id *)a4
{
  errorCopy = error;
  v7 = errorCopy;
  *&self->_errorRecoveryAttempterFlags |= 1u;
  if (self->_wrappedRecoveryAttempter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [self->_wrappedRecoveryAttempter attemptSilentRecoveryFromError:v7 error:a4];
LABEL_9:
      v10 = v8;
      goto LABEL_10;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  if (self->_silentRecoveryOptionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = (*(self->_appModalRecoveryAttempter + 2))();
    goto LABEL_9;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

  v9 = errorCopy;
  v10 = 0;
  *a4 = v7;
LABEL_10:

  return v10;
}

- (void)cancelRecovery
{
  if (self->_wrappedRecoveryAttempter)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      wrappedRecoveryAttempter = self->_wrappedRecoveryAttempter;

      [wrappedRecoveryAttempter cancelRecovery];
    }
  }

  else
  {
    recoveryCancelerOrNil = self->_recoveryCancelerOrNil;
    if (recoveryCancelerOrNil)
    {
      v5 = *(recoveryCancelerOrNil + 2);

      v5();
    }
  }
}

@end