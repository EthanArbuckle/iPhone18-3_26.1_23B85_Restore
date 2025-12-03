@interface VUWObservation
- (VUWObservation)init;
- (VUWObservation)initWithPersonObservation:(id)observation embeddingExpiration:(id)expiration contextualEmbeddingExpiration:(id)embeddingExpiration error:(id *)error;
- (VUWObservation)initWithType:(int64_t)type embedding:(id)embedding embeddingRevision:(id)revision embeddingExpiration:(id)expiration contextualEmbedding:(id)contextualEmbedding contextualEmbeddingRevision:(id)embeddingRevision contextualEmbeddingExpiration:(id)embeddingExpiration embeddingConfidence:(id)self0 contextualEmbeddingConfidence:(id)self1;
@end

@implementation VUWObservation

- (VUWObservation)initWithType:(int64_t)type embedding:(id)embedding embeddingRevision:(id)revision embeddingExpiration:(id)expiration contextualEmbedding:(id)contextualEmbedding contextualEmbeddingRevision:(id)embeddingRevision contextualEmbeddingExpiration:(id)embeddingExpiration embeddingConfidence:(id)self0 contextualEmbeddingConfidence:(id)self1
{
  typeCopy = type;
  selfCopy = self;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  embeddingConfidenceCopy = embeddingConfidence;
  if (embedding)
  {
    revisionCopy = revision;
    expirationCopy = expiration;
    contextualEmbeddingCopy = contextualEmbedding;
    embeddingRevisionCopy = embeddingRevision;
    embeddingExpirationCopy = embeddingExpiration;
    confidenceCopy = confidence;
    embeddingConfidenceCopy2 = embeddingConfidence;
    embeddingCopy = embedding;
    v49 = sub_1D225046C();
    v31 = v30;

    if (expiration)
    {
LABEL_3:
      sub_1D22504DC();

      v32 = sub_1D22504FC();
      (*(*(v32 - 8) + 56))(v21, 0, 1, v32);
      goto LABEL_6;
    }
  }

  else
  {
    revisionCopy2 = revision;
    expirationCopy2 = expiration;
    contextualEmbeddingCopy2 = contextualEmbedding;
    embeddingRevisionCopy2 = embeddingRevision;
    embeddingExpirationCopy2 = embeddingExpiration;
    confidenceCopy2 = confidence;
    embeddingConfidenceCopy3 = embeddingConfidence;
    v49 = 0;
    v31 = 0xF000000000000000;
    if (expiration)
    {
      goto LABEL_3;
    }
  }

  v40 = sub_1D22504FC();
  (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
LABEL_6:
  if (!contextualEmbedding)
  {
    v41 = 0;
    v43 = 0xF000000000000000;
    if (embeddingExpiration)
    {
      goto LABEL_8;
    }

LABEL_10:
    v44 = 1;
    goto LABEL_11;
  }

  v41 = sub_1D225046C();
  v43 = v42;

  if (!embeddingExpiration)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1D22504DC();

  v44 = 0;
LABEL_11:
  v45 = sub_1D22504FC();
  (*(*(v45 - 8) + 56))(v19, v44, 1, v45);
  v46 = embeddingConfidenceCopy;
  v47 = sub_1D21C7264(typeCopy, v49, v31, revision, v21, v41, v43, embeddingRevision, v19, confidence, embeddingConfidenceCopy);

  return v47;
}

- (VUWObservation)initWithPersonObservation:(id)observation embeddingExpiration:(id)expiration contextualEmbeddingExpiration:(id)embeddingExpiration error:(id *)error
{
  v9 = sub_1D22504FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22[-v17];
  if (expiration)
  {
    sub_1D22504DC();
    (*(v10 + 32))(v18, v12, v9);
    v19 = *(v10 + 56);
    v19(v18, 0, 1, v9);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(&v22[-v17], 1, 1, v9);
  }

  if (embeddingExpiration)
  {
    sub_1D22504DC();
    (*(v10 + 32))(v16, v12, v9);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v19(v16, v20, 1, v9);
  return sub_1D21C3C78(observation, v18, v16);
}

- (VUWObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end