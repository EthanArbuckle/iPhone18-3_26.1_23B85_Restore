@interface _SVXStoreDemoMutation
- (_SVXStoreDemoMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SVXStoreDemoMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v5 = [SVXStoreDemo alloc];
    *&v6 = self->_outputVolume;
    v4 = [(SVXStoreDemo *)v5 initWithTranscriptID:self->_transcriptID languageCode:self->_languageCode gender:self->_gender outputVolume:v6];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXStoreDemo *)baseModel copy];
LABEL_5:
    v7 = v4;
    goto LABEL_17;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    transcriptID = self->_transcriptID;
    if ((*&self->_mutationFlags & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    transcriptID = [(SVXStoreDemo *)baseModel transcriptID];
    if ((*&self->_mutationFlags & 4) != 0)
    {
LABEL_8:
      languageCode = self->_languageCode;
      goto LABEL_11;
    }
  }

  languageCode = [(SVXStoreDemo *)self->_baseModel languageCode];
LABEL_11:
  v10 = languageCode;
  if ((*&self->_mutationFlags & 8) != 0)
  {
    gender = self->_gender;
    if ((*&self->_mutationFlags & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    [(SVXStoreDemo *)self->_baseModel outputVolume];
    outputVolume = v13;
    goto LABEL_16;
  }

  gender = [(SVXStoreDemo *)self->_baseModel gender];
  if ((*&self->_mutationFlags & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  outputVolume = self->_outputVolume;
LABEL_16:
  v14 = [SVXStoreDemo alloc];
  *&v15 = outputVolume;
  v7 = [(SVXStoreDemo *)v14 initWithTranscriptID:transcriptID languageCode:v10 gender:gender outputVolume:v15];

LABEL_17:

  return v7;
}

- (_SVXStoreDemoMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SVXStoreDemoMutation;
  v6 = [(_SVXStoreDemoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end