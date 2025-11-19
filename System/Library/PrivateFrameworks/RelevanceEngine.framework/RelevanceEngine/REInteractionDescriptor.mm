@interface REInteractionDescriptor
- (BOOL)isEqual:(id)a3;
- (REInteractionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation REInteractionDescriptor

- (REInteractionDescriptor)init
{
  v6.receiver = self;
  v6.super_class = REInteractionDescriptor;
  v2 = [(REInteractionDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = xmmword_2286B29D0;
    v2[8] = 1;
    v4 = *(v2 + 5);
    *(v2 + 5) = 0;

    *(v3 + 7) = 981668463;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (vabds_f32(self->_weight, v5->_weight) >= 0.00000011921 || vabds_f32(self->_exploreBias, v5->_exploreBias) >= 0.00000011921 || vabds_f32(self->_trainingSimulationExploreBias, v5->_trainingSimulationExploreBias) >= 0.00000011921 || vabds_f32(self->_initialProbability, v5->_initialProbability) >= 0.00000011921 || self->_enableExploreExploit != v5->_enableExploreExploit)
      {
        goto LABEL_24;
      }

      name = v5->_name;
      v8 = self->_name;
      v9 = v8;
      if (v8 == name)
      {
      }

      else
      {
        v10 = [(NSString *)v8 isEqual:name];

        if (!v10)
        {
          goto LABEL_24;
        }
      }

      identificationFeature = v6->_identificationFeature;
      v13 = self->_identificationFeature;
      v14 = v13;
      if (v13 == identificationFeature)
      {
      }

      else
      {
        v15 = [(REFeature *)v13 isEqual:identificationFeature];

        if (!v15)
        {
          goto LABEL_24;
        }
      }

      selectionFeature = v6->_selectionFeature;
      v17 = self->_selectionFeature;
      v18 = v17;
      if (v17 == selectionFeature)
      {
      }

      else
      {
        v19 = [(REFeature *)v17 isEqual:selectionFeature];

        if (!v19)
        {
          goto LABEL_24;
        }
      }

      biasFeature = v6->_biasFeature;
      v21 = self->_biasFeature;
      v22 = v21;
      if (v21 == biasFeature)
      {
      }

      else
      {
        v23 = [(REFeature *)v21 isEqual:biasFeature];

        if (!v23)
        {
LABEL_24:
          v11 = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      v11 = vabds_f32(self->_varianceEpsilon, v6->_varianceEpsilon) < 0.00000011921;
      goto LABEL_25;
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
}

- (unint64_t)hash
{
  *&v2 = self->_weight;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v5 = [v4 hash];
  *&v6 = self->_exploreBias;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v8 = [v7 hash] ^ v5;
  *&v9 = self->_trainingSimulationExploreBias;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v11 = [v10 hash];
  *&v12 = self->_initialProbability;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v14 = v8 ^ v11 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableExploreExploit];
  v16 = [v15 hash];
  v17 = v16 ^ [(NSString *)self->_name hash];
  v18 = v14 ^ v17 ^ [(REFeature *)self->_identificationFeature hash];
  v19 = [(REFeature *)self->_selectionFeature hash];
  v20 = v19 ^ [(REFeature *)self->_biasFeature hash];
  *&v21 = self->_varianceEpsilon;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v23 = v20 ^ [v22 hash];

  return v18 ^ v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setName:self->_name];
  *&v5 = self->_weight;
  [v4 setWeight:v5];
  *&v6 = self->_exploreBias;
  [v4 setExploreBias:v6];
  *&v7 = self->_trainingSimulationExploreBias;
  [v4 setTrainingSimulationExploreBias:v7];
  *&v8 = self->_initialProbability;
  [v4 setInitialProbability:v8];
  [v4 setEnableExploreExploit:self->_enableExploreExploit];
  [v4 setIdentificationFeature:self->_identificationFeature];
  [v4 setSelectionFeature:self->_selectionFeature];
  [v4 setBiasFeature:self->_biasFeature];
  *&v9 = self->_varianceEpsilon;
  [v4 setVarianceEpsilon:v9];
  return v4;
}

@end