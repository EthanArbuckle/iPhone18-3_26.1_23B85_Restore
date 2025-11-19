@interface VUWObservation
- (VUWObservation)init;
- (VUWObservation)initWithPersonObservation:(id)a3 embeddingExpiration:(id)a4 contextualEmbeddingExpiration:(id)a5 error:(id *)a6;
- (VUWObservation)initWithType:(int64_t)a3 embedding:(id)a4 embeddingRevision:(id)a5 embeddingExpiration:(id)a6 contextualEmbedding:(id)a7 contextualEmbeddingRevision:(id)a8 contextualEmbeddingExpiration:(id)a9 embeddingConfidence:(id)a10 contextualEmbeddingConfidence:(id)a11;
@end

@implementation VUWObservation

- (VUWObservation)initWithType:(int64_t)a3 embedding:(id)a4 embeddingRevision:(id)a5 embeddingExpiration:(id)a6 contextualEmbedding:(id)a7 contextualEmbeddingRevision:(id)a8 contextualEmbeddingExpiration:(id)a9 embeddingConfidence:(id)a10 contextualEmbeddingConfidence:(id)a11
{
  v50 = a3;
  v51 = self;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v52 = a11;
  if (a4)
  {
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v25 = a8;
    v26 = a9;
    v27 = a10;
    v28 = a11;
    v29 = a4;
    v49 = sub_1D225046C();
    v31 = v30;

    if (a6)
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
    v33 = a5;
    v34 = a6;
    v35 = a7;
    v36 = a8;
    v37 = a9;
    v38 = a10;
    v39 = a11;
    v49 = 0;
    v31 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v40 = sub_1D22504FC();
  (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
LABEL_6:
  if (!a7)
  {
    v41 = 0;
    v43 = 0xF000000000000000;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v44 = 1;
    goto LABEL_11;
  }

  v41 = sub_1D225046C();
  v43 = v42;

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1D22504DC();

  v44 = 0;
LABEL_11:
  v45 = sub_1D22504FC();
  (*(*(v45 - 8) + 56))(v19, v44, 1, v45);
  v46 = v52;
  v47 = sub_1D21C7264(v50, v49, v31, a5, v21, v41, v43, a8, v19, a10, v52);

  return v47;
}

- (VUWObservation)initWithPersonObservation:(id)a3 embeddingExpiration:(id)a4 contextualEmbeddingExpiration:(id)a5 error:(id *)a6
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
  if (a4)
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

  if (a5)
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
  return sub_1D21C3C78(a3, v18, v16);
}

- (VUWObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end