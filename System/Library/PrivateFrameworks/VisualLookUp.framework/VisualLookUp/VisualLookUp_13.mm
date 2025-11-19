uint64_t sub_1D9A88F9C()
{
  if (!*v0 || (result = sub_1D9C7D77C(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A89088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52868, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A89128(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89194()
{
  sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A89210(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A892B4()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CA7A50);
  qword_1ECB70FF0 = 0xD00000000000002CLL;
  *algn_1ECB70FF8 = 0x80000001D9CA7890;
  return result;
}

uint64_t sub_1D9A89328()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A78);
  __swift_project_value_buffer(v0, qword_1EDD41A78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suppress_ontology_kg_id";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "keep_ontology_kg_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold_between_regions";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ioa_threshold_with_other_domains";
  *(v15 + 8) = 32;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A895C8()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        sub_1D9C7D5CC();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        sub_1D9C7D54C();
      }
    }
  }
}

uint64_t sub_1D9A89690()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    v5 = *(v0 + 24);
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_1D9C7D7CC(), !v1))
    {
      v7 = *(v0 + 40);
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1D9C7D7CC(), !v1))
      {
        if (!*(v0 + 48) || (result = sub_1D9C7D77C(), !v1))
        {
          if (!*(v0 + 52) || (result = sub_1D9C7D77C(), !v1))
          {
            type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
            return sub_1D9C7D3AC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A897CC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A89858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52870, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A898F8(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89964()
{
  sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A899E4()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA7B00);
  qword_1ECB71000 = 0xD00000000000002CLL;
  *algn_1ECB71008 = 0x80000001D9CA7890;
  return result;
}

uint64_t sub_1D9A89A58()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A00);
  __swift_project_value_buffer(v0, qword_1EDD41A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "face_count_threshold";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A89C28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9A89CC4()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_1D9C7D78C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A89DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52878, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A89E84(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A89EF0()
{
  sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A89F6C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8A038()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A90);
  __swift_project_value_buffer(v0, qword_1EDD41A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enabled";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prerequisites";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "requirements";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rich_label_config";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "max_num_of_domain_model_runs";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "image_source_type";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8A310()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1D9A8A4F8();
            break;
          case 5:
            sub_1D9C7D55C();
            break;
          case 6:
            sub_1D9A92004();
            sub_1D9C7D4FC();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1D9C7D4EC();
            goto LABEL_5;
          case 2:
            v3 = v0;
            type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0);
            sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);
            break;
          case 3:
            v3 = v0;
            type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
            sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_1D9C7D5FC();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8A4F8()
{
  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A8A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0), sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite), result = sub_1D9C7D7FC(), !v4))
    {
      if (!*(*(v3 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0), sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement), result = sub_1D9C7D7FC(), !v4))
      {
        result = sub_1D9A8A7C4(v3, a1, a2, a3);
        if (!v4)
        {
          if (*(v3 + 24))
          {
            sub_1D9C7D78C();
          }

          if (*(v3 + 32))
          {
            sub_1D9A92004();
            sub_1D9C7D75C();
          }

          type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB51B70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51B70);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
}

uint64_t sub_1D9A8A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_1D9C7D3BC();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D9A8AAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52880, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8AB60(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8ABCC()
{
  sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8AC7C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AA8);
  __swift_project_value_buffer(v0, qword_1EDD41AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_thresholds";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "domain_thresholds";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8AE90()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
        sub_1D9A8DB48(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
        sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }

    v3 = v0;
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_5:
    v0 = v3;
    sub_1D9C7D5FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9A8B02C()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    result = sub_1D9C7D7FC();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    v4 = v2;
    result = sub_1D9C7D7FC();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0), sub_1D9A8DB48(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8B208@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8B290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52888, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8B330(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8B39C()
{
  sub_1D9A8DB48(&qword_1EDD2EB38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8B4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1DA73DF90](a2, a3);
  *a4 = 0xD00000000000002CLL;
  *a5 = 0x80000001D9CA7B40;
  return result;
}

uint64_t sub_1D9A8B51C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AC0);
  __swift_project_value_buffer(v0, qword_1EDD41AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label_thresholds";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "most_confident_class";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "new_domain_if_not_meet_requirement";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "require_same_top_class_domain";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8B7E8()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
LABEL_4:
          sub_1D9C7D5CC();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          sub_1D9C7D4EC();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
            sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
            sub_1D9C7D5FC();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8B93C()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(*(v0 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0), sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v1))
    {
      v5 = *(v0 + 32);
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = *(v0 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v6 || (result = sub_1D9C7D7CC(), !v1))
      {
        v7 = *(v0 + 56);
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v8 || (result = sub_1D9C7D7CC(), !v1))
        {
          if (*(v0 + 40) != 1 || (result = sub_1D9C7D74C(), !v1))
          {
            if (*(v0 + 64) != 1 || (result = sub_1D9C7D74C(), !v1))
            {
              type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
              return sub_1D9C7D3AC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8BB08@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8BB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A8BBE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A8BCB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52890, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8BD50(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8BDBC()
{
  sub_1D9A8DB48(&qword_1EDD2EBF8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8BE3C()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000010, 0x80000001D9CA7CF0);
  qword_1ECB71030 = 0xD00000000000002CLL;
  *algn_1ECB71038 = 0x80000001D9CA7B40;
  return result;
}

uint64_t sub_1D9A8BEB0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AD8);
  __swift_project_value_buffer(v0, qword_1EDD41AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enabled";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_urn";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "label_thresholds";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "default_threshold";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8C104()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
          sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
          sub_1D9C7D5FC();
        }

        else if (result == 4)
        {
          sub_1D9C7D54C();
        }
      }

      else if (result == 1)
      {
        sub_1D9C7D4EC();
      }

      else if (result == 2)
      {
        sub_1D9C7D5CC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8C248()
{
  if (*v0 != 1 || (result = sub_1D9C7D74C(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1D9C7D7CC(), !v1))
    {
      if (!*(*(v0 + 24) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0), sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v1))
      {
        if (!*(v0 + 32) || (result = sub_1D9C7D77C(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8C3B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8C444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52898, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8C4E4(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8C550()
{
  sub_1D9A8DB48(&qword_1EDD2ECB8, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8C5D0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71040);
  __swift_project_value_buffer(v0, qword_1ECB71040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "labelID";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8C798()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D55C();
    }
  }

  return result;
}

uint64_t sub_1D9A8C818()
{
  if (!*v0 || (result = sub_1D9C7D78C(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D78C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A8C92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528A0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8C9CC(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8CA38()
{
  sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8CAB4(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8CB80()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0), sub_1D9A8DB48(qword_1EDD2AD38, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8CCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528A8, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8CD94(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2ABF0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8CE00()
{
  sub_1D9A8DB48(qword_1EDD2ABF0, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8CE94()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71070);
  __swift_project_value_buffer(v0, qword_1ECB71070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kg";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8D058()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D55C();
    }

    else if (result == 2)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D0E4()
{
  if (!*v0 || (result = sub_1D9C7D78C(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1D9C7D7CC(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D198@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A8D210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528B0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8D2B0(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8D31C()
{
  sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8D398(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8D488(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1D9C7D81C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8D5FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1D9A8DB48(a5, a6);
      sub_1D9C7D5FC();
    }
  }

  return result;
}

uint64_t sub_1D9A8D6D8()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper(0), sub_1D9A8DB48(qword_1EDD2ADE0, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapper), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8D84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB528B8, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8D8EC(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2AC90, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A8D958()
{
  sub_1D9A8DB48(qword_1EDD2AC90, type metadata accessor for Argos_Protos_Queryflow_RichLabelKgMapperConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8D9EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8DB48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9A8FC20(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A8FD20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E38);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v42 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  v17 = *(v42 + 24);
  v18 = *(v12 + 48);
  v40 = a1;
  sub_1D99AB100(a1 + v17, v16, &qword_1ECB510D0);
  v41 = a2;
  sub_1D99AB100(a2 + v17, &v16[v18], &qword_1ECB510D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v20 = v4;
      sub_1D99A6AE0(v16, &qword_1ECB510D0);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v16;
LABEL_14:
    sub_1D99A6AE0(v21, &qword_1ECB51E38);
    goto LABEL_15;
  }

  sub_1D99AB100(v16, v11, &qword_1ECB510D0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    goto LABEL_6;
  }

  v20 = v4;
  v22 = &v16[v18];
  v23 = v38;
  sub_1D9A91CE4(v22, v38, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  v24 = sub_1D9A90270(v11, v23);
  sub_1D9A91D4C(v23, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D99A6AE0(v16, &qword_1ECB510D0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = *(v42 + 28);
  v26 = *(v12 + 48);
  v28 = v39;
  v27 = v40;
  sub_1D99AB100(v40 + v25, v39, &qword_1ECB510D0);
  v29 = v41;
  sub_1D99AB100(v41 + v25, v28 + v26, &qword_1ECB510D0);
  v30 = v20;
  if (v19(v28, 1, v20) != 1)
  {
    v31 = v37;
    sub_1D99AB100(v28, v37, &qword_1ECB510D0);
    if (v19((v28 + v26), 1, v30) != 1)
    {
      v34 = v28 + v26;
      v35 = v38;
      sub_1D9A91CE4(v34, v38, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      v36 = sub_1D9A90270(v31, v35);
      sub_1D9A91D4C(v35, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D9A91D4C(v31, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D99A6AE0(v28, &qword_1ECB510D0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_1D9A91D4C(v31, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
    goto LABEL_13;
  }

  if (v19((v28 + v26), 1, v20) != 1)
  {
LABEL_13:
    v21 = v28;
    goto LABEL_14;
  }

  sub_1D99A6AE0(v28, &qword_1ECB510D0);
LABEL_18:
  if (sub_1D9A247B4(*v27, *v29))
  {
    sub_1D9C7D3CC();
    sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v32 = sub_1D9C7DC2C();
    return v32 & 1;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D9A90270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v14 = *(v23 + 32);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB510C8);
  v16 = a2 + v14;
  v17 = v15;
  sub_1D99AB100(v16, &v13[v15], &qword_1ECB510C8);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB510C8);
LABEL_13:
      sub_1D9C7D3CC();
      sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v19 = sub_1D9C7DC2C();
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB510C8);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_9:
    sub_1D99A6AE0(v13, &qword_1ECB51E30);
    goto LABEL_10;
  }

  sub_1D9A91CE4(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v21 = sub_1D9BBD6FC(v10, v7);
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v13, &qword_1ECB510C8);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D9A905F8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9071C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527D8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_25;
  }

  v15 = v12;
  if ((sub_1D9A249D4(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (sub_1D9A24E44(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v25 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v16 = *(v25 + 40);
  v17 = *(v15 + 48);
  sub_1D99AB100(&a1[v16], v14, &qword_1ECB51B70);
  v26 = v17;
  sub_1D99AB100(&a2[v16], &v14[v17], &qword_1ECB51B70);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v26], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB51B70);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D99A6AE0(v14, &qword_1ECB527D8);
    goto LABEL_25;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB51B70);
  v19 = v26;
  if (v18(&v14[v26], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
    goto LABEL_9;
  }

  sub_1D9A91CE4(&v14[v19], v7, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  v20 = sub_1D9A90D64(v10, v7);
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig);
  sub_1D99A6AE0(v14, &qword_1ECB51B70);
  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (*(a1 + 6) != *(a2 + 6))
  {
    goto LABEL_25;
  }

  v21 = *(a1 + 4);
  v22 = *(a2 + 4);
  if (a2[40] != 1)
  {
    if (v21 == v22)
    {
      goto LABEL_19;
    }

LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  if (v22 > 2)
  {
    if (v22 == 3)
    {
      if (v21 != 3)
      {
        goto LABEL_25;
      }
    }

    else if (v22 == 4)
    {
      if (v21 != 4)
      {
        goto LABEL_25;
      }
    }

    else if (v21 != 5)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (!v22)
  {
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v22 == 1)
  {
    if (v21 != 1)
    {
      goto LABEL_25;
    }
  }

  else if (v21 != 2)
  {
    goto LABEL_25;
  }

LABEL_19:
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v23 = sub_1D9C7DC2C();
  return v23 & 1;
}

uint64_t sub_1D9A90B40(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(void, void), void (*a6)(void))
{
  if ((a3(*a1, *a2) & 1) == 0 || (a4(a1[1], a2[1]) & 1) == 0 || (a5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a6(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90C30(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D9A2534C(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90D64(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A2534C(*(a1 + 3), *(a2 + 3)) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90E54(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A90F1C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 20) == *(a2 + 20))
  {
    type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
    sub_1D9C7D3CC();
    sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    return sub_1D9C7DC2C() & 1;
  }

  return 0;
}

uint64_t sub_1D9A91020(float *a1, float *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if (*(a1 + 16))
  {
    v2 = v2 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9113C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91214(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52528);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527B0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_22;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_22;
  }

  v15 = v12;
  if ((sub_1D9A01074(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (sub_1D9A01CB0(*(a1 + 2), *(a2 + 2)) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    goto LABEL_22;
  }

  v24 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v16 = *(v24 + 48);
  v17 = *(v15 + 48);
  sub_1D99AB100(&a1[v16], v14, &qword_1ECB52528);
  v25 = v17;
  sub_1D99AB100(&a2[v16], &v14[v17], &qword_1ECB52528);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v25], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB52528);
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB52528);
  v20 = v25;
  if (v18(&v14[v25], 1, v4) == 1)
  {
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
LABEL_14:
    v21 = &qword_1ECB527B0;
LABEL_21:
    sub_1D99A6AE0(v14, v21);
    goto LABEL_22;
  }

  sub_1D9A91CE4(&v14[v20], v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  if (*v10 != *v7 || (sub_1D9A1EF04(*(v10 + 1), *(v7 + 1)) & 1) == 0 || *(v10 + 4) != *(v7 + 4))
  {
    sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
    v21 = &qword_1ECB52528;
    goto LABEL_21;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v22 = sub_1D9C7DC2C();
  sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D99A6AE0(v14, &qword_1ECB52528);
  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((sub_1D9A27A14(*(a1 + 5), *(a2 + 5)) & 1) == 0)
  {
LABEL_22:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9A916AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_1D9A1EF04(*(a1 + 1), *(a2 + 1)) & 1) == 0 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91778(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91864(float *a1, float *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52758);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v14 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v15 = *(v14 + 40);
  v16 = a1;
  v17 = *(v11 + 48);
  v26 = v14;
  v27 = v16;
  sub_1D99AB100(v16 + v15, v13, &qword_1ECB52530);
  v18 = a2 + v15;
  v19 = a2;
  sub_1D99AB100(v18, &v13[v17], &qword_1ECB52530);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB52530);
    if (v20(&v13[v17], 1, v4) != 1)
    {
      sub_1D9A91CE4(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      v23 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (v23 || (sub_1D9C7E7DC()) && *(v10 + 4) == *(v7 + 4))
      {
        sub_1D9C7D3CC();
        sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        v19 = a2;
        v24 = sub_1D9C7DC2C();
        sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
        sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
        sub_1D99A6AE0(v13, &qword_1ECB52530);
        if (v24)
        {
          goto LABEL_5;
        }

LABEL_23:
        v21 = 0;
        return v21 & 1;
      }

      sub_1D9A91D4C(v7, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
      v22 = &qword_1ECB52530;
LABEL_22:
      sub_1D99A6AE0(v13, v22);
      goto LABEL_23;
    }

    sub_1D9A91D4C(v10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
LABEL_12:
    v22 = &qword_1ECB52758;
    goto LABEL_22;
  }

  if (v20(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D99A6AE0(v13, &qword_1ECB52530);
LABEL_5:
  if (v27[1] != v19[1] || v27[2] != v19[2] || *(v27 + 12) != *(v19 + 12) || v27[4] != v19[4])
  {
    goto LABEL_23;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v21 = sub_1D9C7DC2C();
  return v21 & 1;
}

uint64_t sub_1D9A91CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A91D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A91DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A91EA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9A91F08()
{
  result = qword_1EDD2F668;
  if (!qword_1EDD2F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F668);
  }

  return result;
}

unint64_t sub_1D9A91F5C()
{
  result = qword_1EDD2F060;
  if (!qword_1EDD2F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F060);
  }

  return result;
}

unint64_t sub_1D9A91FB0()
{
  result = qword_1EDD30918;
  if (!qword_1EDD30918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30918);
  }

  return result;
}

unint64_t sub_1D9A92004()
{
  result = qword_1EDD2ED90;
  if (!qword_1EDD2ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED90);
  }

  return result;
}

uint64_t sub_1D9A92128()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A921E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1D9A778AC(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A922AC()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D9A92370()
{
  v0 = sub_1D9C7D8DC();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v28 = sub_1D9C7B80C();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D9C7DC4C();
  v12 = sub_1D9C7DC4C();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (!v13)
  {
    static Logger.argos.getter(v2);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1D9A0E224(0xD000000000000012, 0x80000001D9CA7E40, &v29);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D9A0E224(0x736C65646F6D6976, 0xE800000000000000, &v29);
      _os_log_impl(&dword_1D9962000, v17, v18, "Failed to get models bundle url %s.%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v20, -1, -1);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v26 + 8))(v2, v27);
    return 0;
  }

  sub_1D9C7B7CC();

  v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v15 = sub_1D9C7B77C();
  v16 = [v14 initWithURL_];

  if (!v16)
  {
    static Logger.argos.getter(v5);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D9A0E224(0xD000000000000012, 0x80000001D9CA7E40, &v29);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1D9A0E224(0x736C65646F6D6976, 0xE800000000000000, &v29);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load models bundle %s.%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v24, -1, -1);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v26 + 8))(v5, v27);
    (*(v6 + 8))(v8, v28);
    return 0;
  }

  (*(v6 + 8))(v8, v28);
  return v16;
}

uint64_t sub_1D9A9283C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  *(v1 + 16) = sub_1D9A469F0(MEMORY[0x1E69E7CC0]);
  v11 = sub_1D9A92370();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D9A39304(v12);
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      static Logger.argos.getter(v10);
      sub_1D9A3E0E0(v7);
      v39 = *(v5 + 8);
      v39(v10, v4);

      v17 = sub_1D9C7D8BC();
      v18 = sub_1D9C7E09C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = v12;
        v20 = v19;
        v36 = swift_slowAlloc();
        v40 = v36;
        *v20 = 136315394;
        sub_1D9C7B80C();
        v38 = a1;
        sub_1D9A3B0BC();
        v35 = v18;

        v21 = sub_1D9C7DB6C();
        v34 = v17;
        v23 = v22;

        v24 = sub_1D9A0E224(v21, v23, &v40);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;

        v25 = sub_1D9C7DB6C();
        v27 = v26;

        v28 = sub_1D9A0E224(v25, v27, &v40);
        a1 = v38;

        *(v20 + 14) = v28;
        v29 = v34;
        _os_log_impl(&dword_1D9962000, v34, v35, "loaded providers for %s %s", v20, 0x16u);
        v30 = v36;
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v30, -1, -1);
        v31 = v20;
        v12 = v37;
        MEMORY[0x1DA7405F0](v31, -1, -1);
      }

      else
      {
      }

      v39(v7, v4);

      sub_1D9A3AD88(v15, v2);

      sub_1D9A3AF20(v16, a1, v2);
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_1D9A92BC4(int a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v98 = a2;
  v99 = sub_1D9C7B80C();
  v4 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v89 - v7;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  static Logger.argos.getter(&v89 - v21);
  sub_1D9A3E0E0(v19);
  v23 = *(v10 + 8);
  v23(v22, v9);
  v24 = sub_1D9C7D8BC();
  v25 = sub_1D9C7E09C();
  v26 = os_log_type_enabled(v24, v25);
  v100 = v10 + 8;
  v95 = a1;
  if (v26)
  {
    v90 = v4;
    v96 = v23;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v102[0] = v28;
    *v27 = 136315138;
    v91 = v9;
    if (a1 <= 3u)
    {
      v37 = 0x65447463656A626FLL;
      v38 = 0xEF6E6F6974636574;
      v39 = 0x80000001D9CA29D0;
      v40 = 0xD000000000000019;
      if (a1 != 2)
      {
        v40 = 0x64656966696E75;
        v39 = 0xE700000000000000;
      }

      if (a1)
      {
        v37 = 0xD000000000000010;
        v38 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v35 = v37;
      }

      else
      {
        v35 = v40;
      }

      if (a1 <= 1u)
      {
        v36 = v38;
      }

      else
      {
        v36 = v39;
      }
    }

    else
    {
      v29 = 0x6F7765727574616ELL;
      v30 = 0xED00003276646C72;
      v31 = 0xE400000000000000;
      v32 = 1685024614;
      if (a1 != 7)
      {
        v32 = 0x626D79536E676973;
        v31 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v29 = v32;
        v30 = v31;
      }

      v33 = 0x766432736F677261;
      v34 = 0xE900000000000032;
      if (a1 != 4)
      {
        v33 = 0x6F7765727574616ELL;
        v34 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v35 = v33;
      }

      else
      {
        v35 = v29;
      }

      if (a1 <= 5u)
      {
        v36 = v34;
      }

      else
      {
        v36 = v30;
      }
    }

    v41 = sub_1D9A0E224(v35, v36, v102);

    *(v27 + 4) = v41;
    _os_log_impl(&dword_1D9962000, v24, v25, "loading provider for %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1DA7405F0](v28, -1, -1);
    MEMORY[0x1DA7405F0](v27, -1, -1);

    v9 = v91;
    v23 = v96;
    v96(v19, v91);
    v4 = v90;
  }

  else
  {

    v23(v19, v9);
  }

  v42 = v4;
  v43 = *(v4 + 16);
  v45 = v98;
  v44 = v99;
  v43(v8, v98, v99);
  type metadata accessor for ModelBundleProvider();
  swift_allocObject();
  v46 = sub_1D99CC1C0(v8);
  if (v46)
  {
    v47 = v46;
    v48 = v94;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(v48 + 16);
    *(v48 + 16) = 0x8000000000000000;
    v50 = v95;
    sub_1D9A9483C(v47, v95, isUniquelyReferenced_nonNull_native, &v101, &off_1F552B700);
    *(v48 + 16) = v101;
    swift_endAccess();
    static Logger.argos.getter(v14);
    v51 = v97;
    sub_1D9A3E0E0(v97);
    v23(v14, v9);

    v52 = sub_1D9C7D8BC();
    v53 = v23;
    v54 = sub_1D9C7E09C();

    if (os_log_type_enabled(v52, v54))
    {
      v55 = v9;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v102[0] = v57;
      *v56 = 136315394;
      if (v50 <= 3u)
      {
        v81 = 0x65447463656A626FLL;
        v82 = 0xEF6E6F6974636574;
        v83 = 0x80000001D9CA29D0;
        v84 = 0xD000000000000019;
        if (v50 != 2)
        {
          v84 = 0x64656966696E75;
          v83 = 0xE700000000000000;
        }

        if (v50)
        {
          v81 = 0xD000000000000010;
          v82 = 0x80000001D9CA29B0;
        }

        if (v50 <= 1u)
        {
          v64 = v81;
        }

        else
        {
          v64 = v84;
        }

        if (v50 <= 1u)
        {
          v65 = v82;
        }

        else
        {
          v65 = v83;
        }
      }

      else
      {
        v58 = 0x6F7765727574616ELL;
        v59 = 0xED00003276646C72;
        v60 = 0xE400000000000000;
        v61 = 1685024614;
        if (v50 != 7)
        {
          v61 = 0x626D79536E676973;
          v60 = 0xEA00000000006C6FLL;
        }

        if (v50 != 6)
        {
          v58 = v61;
          v59 = v60;
        }

        v62 = 0x766432736F677261;
        v63 = 0xE900000000000032;
        if (v50 != 4)
        {
          v62 = 0x6F7765727574616ELL;
          v63 = 0xEB00000000646C72;
        }

        if (v50 <= 5u)
        {
          v64 = v62;
        }

        else
        {
          v64 = v58;
        }

        if (v50 <= 5u)
        {
          v65 = v63;
        }

        else
        {
          v65 = v59;
        }
      }

      v85 = sub_1D9A0E224(v64, v65, v102);

      *(v56 + 4) = v85;
      *(v56 + 12) = 2080;
      v86 = *(v47 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info);
      v87 = *(v47 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info + 8);

      v88 = sub_1D9A0E224(v86, v87, v102);

      *(v56 + 14) = v88;
      _os_log_impl(&dword_1D9962000, v52, v54, "models bundle, providers[key] = provider, %s, %s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v57, -1, -1);
      MEMORY[0x1DA7405F0](v56, -1, -1);

      v78 = v97;
      v79 = v55;
    }

    else
    {

      v78 = v51;
      v79 = v9;
    }

    return v53(v78, v79);
  }

  else
  {
    v96 = v23;
    v66 = v93;
    static Logger.argos.getter(v93);
    v67 = v92;
    v43(v92, v45, v44);
    v68 = sub_1D9C7D8BC();
    v69 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = v44;
      v72 = swift_slowAlloc();
      v102[0] = v72;
      *v70 = 136315138;
      sub_1D99AB1D0();
      v73 = sub_1D9C7E7AC();
      v75 = v74;
      (*(v42 + 8))(v67, v71);
      v76 = sub_1D9A0E224(v73, v75, v102);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_1D9962000, v68, v69, "Failed to configure embedded MLModel provider with %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x1DA7405F0](v72, -1, -1);
      MEMORY[0x1DA7405F0](v70, -1, -1);

      v77 = v93;
    }

    else
    {

      (*(v42 + 8))(v67, v44);
      v77 = v66;
    }

    return (v96)(v77, v9);
  }
}

uint64_t sub_1D9A93530(int a1, void *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v98 = a5;
  v99 = a3;
  v100 = a4;
  v101 = a2;
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - v21;
  static Logger.argos.getter(&v92 - v21);
  sub_1D9A3E0E0(v19);
  v25 = *(v9 + 8);
  v23 = v9 + 8;
  v24 = v25;
  v25(v22, v8);
  v26 = sub_1D9C7D8BC();
  v27 = sub_1D9C7E09C();
  v28 = os_log_type_enabled(v26, v27);
  v94 = v11;
  v96 = a1;
  if (v28)
  {
    v95 = v24;
    v92 = v23;
    v93 = v8;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v103[0] = v30;
    *v29 = 136315138;
    if (a1 <= 3u)
    {
      v40 = 0x65447463656A626FLL;
      v41 = 0xEF6E6F6974636574;
      v42 = 0x80000001D9CA29D0;
      v43 = 0xD000000000000019;
      if (a1 != 2)
      {
        v43 = 0x64656966696E75;
        v42 = 0xE700000000000000;
      }

      if (a1)
      {
        v40 = 0xD000000000000010;
        v41 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v37 = v40;
      }

      else
      {
        v37 = v43;
      }

      if (a1 <= 1u)
      {
        v38 = v41;
      }

      else
      {
        v38 = v42;
      }
    }

    else
    {
      v31 = 0x6F7765727574616ELL;
      v32 = 0xED00003276646C72;
      v33 = 0xE400000000000000;
      v34 = 1685024614;
      if (a1 != 7)
      {
        v34 = 0x626D79536E676973;
        v33 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v31 = v34;
        v32 = v33;
      }

      v35 = 0x766432736F677261;
      v36 = 0xE900000000000032;
      if (a1 != 4)
      {
        v35 = 0x6F7765727574616ELL;
        v36 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v37 = v35;
      }

      else
      {
        v37 = v31;
      }

      if (a1 <= 5u)
      {
        v38 = v36;
      }

      else
      {
        v38 = v32;
      }
    }

    v39 = v100;
    v44 = sub_1D9A0E224(v37, v38, v103);

    *(v29 + 4) = v44;
    _os_log_impl(&dword_1D9962000, v26, v27, "loading trial provider for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1DA7405F0](v30, -1, -1);
    MEMORY[0x1DA7405F0](v29, -1, -1);

    v8 = v93;
    v24 = v95;
    v95(v19, v93);
  }

  else
  {

    v24(v19, v8);
    v39 = v100;
  }

  type metadata accessor for TrialModelProvider();
  swift_allocObject();
  v45 = v99;

  v46 = v98;

  v47 = sub_1D9B21D8C(v101, v45, v39, v46);
  if (v47)
  {
    v48 = v47;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    v50 = v96;
    sub_1D9A9483C(v48, v96, isUniquelyReferenced_nonNull_native, &v102, &off_1F5531710);
    *(a6 + 16) = v102;
    swift_endAccess();
    static Logger.argos.getter(v16);
    v51 = v97;
    sub_1D9A3E0E0(v97);
    v24(v16, v8);

    v52 = sub_1D9C7D8BC();
    v53 = sub_1D9C7E09C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v50;
      v57 = v55;
      v103[0] = v55;
      *v54 = 136315394;
      v58 = v56;
      v59 = v24;
      if (v56 <= 3u)
      {
        v84 = 0x65447463656A626FLL;
        v85 = 0xEF6E6F6974636574;
        v86 = 0x80000001D9CA29D0;
        v87 = 0xD000000000000019;
        if (v58 != 2)
        {
          v87 = 0x64656966696E75;
          v86 = 0xE700000000000000;
        }

        if (v58)
        {
          v84 = 0xD000000000000010;
          v85 = 0x80000001D9CA29B0;
        }

        if (v58 <= 1)
        {
          v66 = v84;
        }

        else
        {
          v66 = v87;
        }

        if (v58 <= 1)
        {
          v67 = v85;
        }

        else
        {
          v67 = v86;
        }
      }

      else
      {
        v60 = 0x6F7765727574616ELL;
        v61 = 0xED00003276646C72;
        v62 = 0xE400000000000000;
        v63 = 1685024614;
        if (v58 != 7)
        {
          v63 = 0x626D79536E676973;
          v62 = 0xEA00000000006C6FLL;
        }

        if (v58 != 6)
        {
          v60 = v63;
          v61 = v62;
        }

        v64 = 0x766432736F677261;
        v65 = 0xE900000000000032;
        if (v58 != 4)
        {
          v64 = 0x6F7765727574616ELL;
          v65 = 0xEB00000000646C72;
        }

        if (v58 <= 5)
        {
          v66 = v64;
        }

        else
        {
          v66 = v60;
        }

        if (v58 <= 5)
        {
          v67 = v65;
        }

        else
        {
          v67 = v61;
        }
      }

      v88 = sub_1D9A0E224(v66, v67, v103);

      *(v54 + 4) = v88;
      *(v54 + 12) = 2080;
      v89 = *(v48 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info);
      v90 = *(v48 + OBJC_IVAR____TtC12VisualLookUp18TrialModelProvider_info + 8);

      v91 = sub_1D9A0E224(v89, v90, v103);

      *(v54 + 14) = v91;
      _os_log_impl(&dword_1D9962000, v52, v53, "trial mapping, providers[key] = provider, %s, %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v57, -1, -1);
      MEMORY[0x1DA7405F0](v54, -1, -1);

      return v59(v97, v8);
    }

    v83 = v51;
    return (v24)(v83, v8);
  }

  v68 = v94;
  static Logger.argos.getter(v94);

  v69 = sub_1D9C7D8BC();
  v70 = sub_1D9C7E0AC();

  if (!os_log_type_enabled(v69, v70))
  {

    v83 = v68;
    return (v24)(v83, v8);
  }

  v95 = v24;
  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v73 = v45;
  v74 = v72;
  v103[0] = v72;
  *v71 = 136315394;
  *(v71 + 4) = sub_1D9A0E224(v101, v73, v103);
  *(v71 + 12) = 2080;
  v75 = 0xD000000000000017;
  v76 = "reportAnIssueEnvironment";
  v77 = "VISUAL_INTELLIGENCE_NATURE";
  v78 = 0xD000000000000018;
  if (v39 != 2)
  {
    v78 = 0xD00000000000001CLL;
    v77 = "VISUAL_INTELLIGENCE_PETS";
  }

  if (v39)
  {
    v75 = 0xD00000000000001ALL;
    v76 = "VISUAL_INTELLIGENCE_POC";
  }

  if (v39 <= 1u)
  {
    v79 = v75;
  }

  else
  {
    v79 = v78;
  }

  if (v39 <= 1u)
  {
    v80 = v76;
  }

  else
  {
    v80 = v77;
  }

  v81 = sub_1D9A0E224(v79, v80 | 0x8000000000000000, v103);

  *(v71 + 14) = v81;
  _os_log_impl(&dword_1D9962000, v69, v70, "Failed to configure Trial Model provider with factor: %s; namespace: %s", v71, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA7405F0](v74, -1, -1);
  MEMORY[0x1DA7405F0](v71, -1, -1);

  return (v95)(v68, v8);
}

uint64_t sub_1D9A93E64(unsigned __int8 a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = (v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v95 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v97 = v95 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  static Logger.argos.getter(v95 - v17);
  sub_1D9A3E0E0(v15);
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v19 = v21;
  v21(v18, v4);
  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();
  if (os_log_type_enabled(v22, v23))
  {
    v98 = v10;
    v95[1] = v20;
    v100 = v4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v103[0] = v25;
    *v24 = 136315138;
    v26 = a1;
    v99 = v19;
    if (a1 <= 3u)
    {
      v36 = 0x65447463656A626FLL;
      v37 = 0xEF6E6F6974636574;
      v38 = 0x80000001D9CA29D0;
      v39 = 0xD000000000000019;
      if (a1 != 2)
      {
        v39 = 0x64656966696E75;
        v38 = 0xE700000000000000;
      }

      if (a1)
      {
        v36 = 0xD000000000000010;
        v37 = 0x80000001D9CA29B0;
      }

      if (a1 <= 1u)
      {
        v33 = v36;
      }

      else
      {
        v33 = v39;
      }

      if (a1 <= 1u)
      {
        v34 = v37;
      }

      else
      {
        v34 = v38;
      }
    }

    else
    {
      v27 = 0x6F7765727574616ELL;
      v28 = 0xED00003276646C72;
      v29 = 0xE400000000000000;
      v30 = 1685024614;
      if (a1 != 7)
      {
        v30 = 0x626D79536E676973;
        v29 = 0xEA00000000006C6FLL;
      }

      if (a1 != 6)
      {
        v27 = v30;
        v28 = v29;
      }

      v31 = 0x766432736F677261;
      v32 = 0xE900000000000032;
      if (a1 != 4)
      {
        v31 = 0x6F7765727574616ELL;
        v32 = 0xEB00000000646C72;
      }

      if (a1 <= 5u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v27;
      }

      if (a1 <= 5u)
      {
        v34 = v32;
      }

      else
      {
        v34 = v28;
      }
    }

    v35 = v7;
    v40 = sub_1D9A0E224(v33, v34, v103);

    *(v24 + 4) = v40;
    _os_log_impl(&dword_1D9962000, v22, v23, "Providing model for %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1DA7405F0](v25, -1, -1);
    MEMORY[0x1DA7405F0](v24, -1, -1);

    v19 = v99;
    v4 = v100;
    v99(v15, v100);
    v10 = v98;
  }

  else
  {
    v26 = a1;

    v19(v15, v4);
    v35 = v7;
  }

  v41 = v101;
  swift_beginAccess();
  v42 = *(v41 + 16);
  v43 = v26;
  if (*(v42 + 16))
  {

    v44 = sub_1D99EE2D4(v26);
    if (v45)
    {
      v46 = (*(v42 + 56) + 16 * v44);
      v47 = *v46;
      v48 = v46[1];
      swift_unknownObjectRetain();

      v49 = v97;
      static Logger.argos.getter(v97);
      sub_1D9A3E0E0(v10);
      v19(v49, v4);
      swift_unknownObjectRetain();
      v50 = v10;
      v51 = sub_1D9C7D8BC();
      v52 = v4;
      v53 = sub_1D9C7E09C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v51, v53))
      {
        v98 = v50;
        v100 = v52;
        v54 = v43;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v102 = v56;
        *v55 = 136315394;
        v99 = v19;
        if (v54 <= 3u)
        {
          v85 = 0x65447463656A626FLL;
          v86 = 0xEF6E6F6974636574;
          v87 = 0x80000001D9CA29D0;
          v88 = 0xD000000000000019;
          if (v54 != 2)
          {
            v88 = 0x64656966696E75;
            v87 = 0xE700000000000000;
          }

          if (v54)
          {
            v85 = 0xD000000000000010;
            v86 = 0x80000001D9CA29B0;
          }

          if (v54 <= 1u)
          {
            v63 = v85;
          }

          else
          {
            v63 = v88;
          }

          if (v54 <= 1u)
          {
            v64 = v86;
          }

          else
          {
            v64 = v87;
          }
        }

        else
        {
          v57 = 0x6F7765727574616ELL;
          v58 = 0xED00003276646C72;
          v59 = 0xE400000000000000;
          v60 = 1685024614;
          if (v54 != 7)
          {
            v60 = 0x626D79536E676973;
            v59 = 0xEA00000000006C6FLL;
          }

          if (v54 != 6)
          {
            v57 = v60;
            v58 = v59;
          }

          v61 = 0x766432736F677261;
          v62 = 0xE900000000000032;
          if (v54 != 4)
          {
            v61 = 0x6F7765727574616ELL;
            v62 = 0xEB00000000646C72;
          }

          if (v54 <= 5u)
          {
            v63 = v61;
          }

          else
          {
            v63 = v57;
          }

          if (v54 <= 5u)
          {
            v64 = v62;
          }

          else
          {
            v64 = v58;
          }
        }

        v89 = sub_1D9A0E224(v63, v64, &v102);

        *(v55 + 4) = v89;
        *(v55 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v91 = v96;
        (*(v48 + 8))(ObjectType, v48);
        v92 = *v91;
        v93 = v91[1];

        sub_1D99A404C(v91);
        v94 = sub_1D9A0E224(v92, v93, &v102);

        *(v55 + 14) = v94;
        _os_log_impl(&dword_1D9962000, v51, v53, "%s -> %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v56, -1, -1);
        MEMORY[0x1DA7405F0](v55, -1, -1);

        v99(v98, v100);
      }

      else
      {

        v19(v50, v52);
      }

      return v47;
    }
  }

  static Logger.argos.getter(v35);
  v65 = sub_1D9C7D8BC();
  v66 = sub_1D9C7E09C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v102 = v68;
    *v67 = 136315138;
    v69 = v43;
    v70 = v19;
    if (v69 <= 3)
    {
      v79 = 0x65447463656A626FLL;
      v80 = 0xEF6E6F6974636574;
      v81 = 0x80000001D9CA29D0;
      v82 = 0xD000000000000019;
      if (v69 != 2)
      {
        v82 = 0x64656966696E75;
        v81 = 0xE700000000000000;
      }

      if (v69)
      {
        v79 = 0xD000000000000010;
        v80 = 0x80000001D9CA29B0;
      }

      if (v69 <= 1)
      {
        v77 = v79;
      }

      else
      {
        v77 = v82;
      }

      if (v69 <= 1)
      {
        v78 = v80;
      }

      else
      {
        v78 = v81;
      }
    }

    else
    {
      v71 = 0x6F7765727574616ELL;
      v72 = 0xED00003276646C72;
      v73 = 0xE400000000000000;
      v74 = 1685024614;
      if (v69 != 7)
      {
        v74 = 0x626D79536E676973;
        v73 = 0xEA00000000006C6FLL;
      }

      if (v69 != 6)
      {
        v71 = v74;
        v72 = v73;
      }

      v75 = 0x766432736F677261;
      v76 = 0xE900000000000032;
      if (v69 != 4)
      {
        v75 = 0x6F7765727574616ELL;
        v76 = 0xEB00000000646C72;
      }

      if (v69 <= 5)
      {
        v77 = v75;
      }

      else
      {
        v77 = v71;
      }

      if (v69 <= 5)
      {
        v78 = v76;
      }

      else
      {
        v78 = v72;
      }
    }

    v83 = sub_1D9A0E224(v77, v78, &v102);

    *(v67 + 4) = v83;
    _os_log_impl(&dword_1D9962000, v65, v66, "There is no model for %s.", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x1DA7405F0](v68, -1, -1);
    MEMORY[0x1DA7405F0](v67, -1, -1);

    v70(v35, v4);
  }

  else
  {

    v19(v35, v4);
  }

  return 0;
}

unint64_t sub_1D9A9483C(uint64_t a1, unsigned __int8 a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  result = sub_1D99EE2D4(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1D9C0B734(v16, a3 & 1);
      result = sub_1D99EE2D4(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D9C15200();
      result = v19;
    }
  }

  v21 = *a4;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a2;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a5;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a5;

  return swift_unknownObjectRelease();
}

uint64_t sub_1D9A9499C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1D99A85E0(a1, &v22 - v10);
  Context = type metadata accessor for VisualQueryContext();
  v13 = *(*(Context - 8) + 48);
  if (v13(v11, 1, Context) == 1)
  {
    sub_1D99A8650(v11);
    v14 = 0;
  }

  else
  {
    v14 = *&v11[*(Context + 52)];
    sub_1D99A86B8(v11);
  }

  sub_1D99A85E0(a1, v8);
  if (v13(v8, 1, Context) == 1)
  {
    sub_1D99A8650(v8);
  }

  else
  {
    v15 = *v8;
    v16 = *(v8 + 1);

    sub_1D99A86B8(v8);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_8:
  if (a2)
  {
    v17 = 21;
  }

  else
  {
    v17 = 8;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69CA478]);

  v19 = [v18 initWithInput:0 triggerEvent:v17 queryId:v14];
  v20 = sub_1D9C7DC4C();

  [v19 setOriginatingApp_];

  result = sub_1D99A8650(a1);
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(lo:hi:)(Swift::Double lo, Swift::Double hi)
{
  v4 = vceqq_f64(*&lo, vdupq_n_s64(0xC00921FB54442D18));
  v5 = vdupq_n_s64(0x400921FB54442D18uLL);
  v6 = vrev64_s32(vmovn_s64(vceqq_f64(*&lo, v5)));
  v7.i64[0] = v6.i32[0];
  v7.i64[1] = v6.i32[1];
  v8 = vbslq_s8(v4, vbslq_s8(v7, *&lo, v5), *&lo);
  *v2 = v8;
  result.hi = *v4.i64;
  result.lo = *v8.i64;
  return result;
}

BOOL S1Interval.isValid.getter()
{
  result = 0;
  v2 = *v0;
  if (fabs(*v0) <= 3.14159265)
  {
    v3 = v0[1];
    if (fabs(v3) <= 3.14159265)
    {
      if (v2 != -3.14159265 || v3 == 3.14159265)
      {
        return v2 == 3.14159265 || v3 != -3.14159265;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

double S1Interval.center.getter()
{
  v1 = v0[1];
  result = (*v0 + v1) * 0.5;
  if (v1 < *v0)
  {
    if (result <= 0.0)
    {
      v3 = 3.14159265;
    }

    else
    {
      v3 = -3.14159265;
    }

    return result + v3;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.contains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
    if (v2 < v3)
    {
      if (v3 <= 3.14159265 || v2 >= 3.14159265)
      {
        return v3 - v2 != 6.28318531;
      }

      return 0;
    }
  }

  else if (v2 < v3)
  {
    if (v3 <= point || v2 >= point)
    {
      return v3 - v2 != 6.28318531;
    }

    return 0;
  }

  if (v3 > point)
  {
    return 0;
  }

  return point <= v2;
}

uint64_t S1Interval.complement.getter@<X0>(double *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (*v1 == v3)
  {
    if (qword_1ECB50AD0 != -1)
    {
      v4 = a1;
      result = swift_once();
      a1 = v4;
    }

    v2 = *(&xmmword_1ECB528E0 + 1);
    v3 = *&xmmword_1ECB528E0;
  }

  *a1 = v3;
  a1[1] = v2;
  return result;
}

Swift::Bool __swiftcall S1Interval.intersects(with:)(VisualLookUp::S1Interval with)
{
  v3 = v1;
  result = 0;
  v5 = *v2;
  v6 = v2[1];
  if (*v2 - v6 != 6.28318531)
  {
    v8 = *v3;
    v7 = v3[1];
    if (*v3 - v7 != 6.28318531)
    {
      if (v6 >= v5)
      {
        if (v7 >= v8)
        {
          if (v8 > v6)
          {
            return 0;
          }
        }

        else if (v8 <= v6)
        {
          return 1;
        }

        return v5 <= v7;
      }

      else
      {
        v9 = v8 <= v6;
        if (v5 <= v7)
        {
          v9 = 1;
        }

        return v7 < v8 || v9;
      }
    }
  }

  return result;
}

double S1Interval.length.getter()
{
  result = v0[1] - *v0;
  v2 = result + 6.28318531;
  if (result + 6.28318531 <= 0.0)
  {
    v2 = -1.0;
  }

  if (result < 0.0)
  {
    return v2;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.interiorContains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
    if (v2 < v3)
    {
      if (v3 < 3.14159265)
      {
        return 1;
      }

      return point < v2;
    }

    if (v3 < 3.14159265 && v2 > 3.14159265)
    {
      return 1;
    }
  }

  else
  {
    if (v2 < v3)
    {
      if (v3 < point)
      {
        return 1;
      }

      return point < v2;
    }

    if (v3 < point)
    {
      v5 = v2 == point;
      v6 = v2 < point;
    }

    else
    {
      v5 = 1;
      v6 = 0;
    }

    if (!v6 && !v5)
    {
      return 1;
    }
  }

  return v2 - v3 == 6.28318531;
}

Swift::Bool __swiftcall S1Interval.contains(interval:)(VisualLookUp::S1Interval interval)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *v2;
  v5 = v2[1];
  if (v5 >= *v2)
  {
    if (v3 < v4)
    {
      return v5 - v6 == 6.28318531 || v4 - v3 == 6.28318531;
    }
  }

  else if (v3 >= v4)
  {
    if (v6 > v4)
    {
      v8 = v3 == v5;
      v7 = v3 >= v5;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (v8 || !v7)
    {
      return v6 - v5 != 6.28318531;
    }

    return 0;
  }

  if (v6 > v4)
  {
    return 0;
  }

  return v3 <= v5;
}

Swift::Bool __swiftcall S1Interval.interiorContains(interval:)(VisualLookUp::S1Interval interval)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = *v2;
  v5 = v2[1];
  if (v5 >= *v2)
  {
    if (v3 >= v4)
    {
      if (v6 >= v4 || v3 >= v5)
      {
        v8 = v5 - v6;
        return v8 == 6.28318531;
      }
    }

    else if (v5 - v6 != 6.28318531)
    {
      return v4 - v3 == 6.28318531;
    }
  }

  else if (v3 >= v4)
  {
    if (v6 >= v4)
    {
      return v3 < v5;
    }
  }

  else if (v6 >= v4 || v3 >= v5)
  {
    v8 = v4 - v3;
    return v8 == 6.28318531;
  }

  return 1;
}

Swift::Bool __swiftcall S1Interval.interiorIntersects(with:)(VisualLookUp::S1Interval with)
{
  v3 = v1;
  result = 0;
  v5 = *v2;
  v6 = v2[1];
  if (*v2 != v6 && v5 - v6 != 6.28318531)
  {
    v8 = *v3;
    v7 = v3[1];
    if (*v3 - v7 != 6.28318531)
    {
      if (v6 >= v5)
      {
        if (v7 >= v8)
        {
          if (v8 >= v6 || v5 >= v7)
          {
            return v6 - v5 == 6.28318531;
          }
        }

        else if (v8 >= v6)
        {
          return v5 < v7;
        }

        return 1;
      }

      else
      {
        v9 = v8 < v6;
        if (v5 < v7)
        {
          v9 = 1;
        }

        return v7 < v8 || v9;
      }
    }
  }

  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.add(point:)(Swift::Double point)
{
  v3 = *v2;
  v4 = v2[1];
  if (point == -3.14159265)
  {
    point = 3.14159265;
  }

  if (v4 >= v3)
  {
    if (v3 > point || point > v4)
    {
      v6 = v3 - v4;
      goto LABEL_16;
    }

LABEL_18:
    *v1 = v3;
    v1[1] = v4;
    goto LABEL_36;
  }

  v5 = point > v4 && v3 > point;
  v6 = v3 - v4;
  if (!v5 && v6 != 6.28318531)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v6 == 6.28318531)
  {
    *v1 = point;
    v1[1] = point;
  }

  else
  {
    v8 = v3 - point;
    if (v3 - point < 0.0)
    {
      v8 = v3 + 3.14159265 - (point + -3.14159265);
    }

    v9 = point - v4;
    if (point - v4 < 0.0)
    {
      v9 = point + 3.14159265 - (v4 + -3.14159265);
    }

    if (v8 >= v9)
    {
      if (point == 3.14159265)
      {
        v10 = *v2;
      }

      else
      {
        v10 = 3.14159265;
      }

      if (v3 == -3.14159265)
      {
        v3 = v10;
      }

      *v1 = v3;
      v1[1] = point;
    }

    else
    {
      if (point == 3.14159265)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 3.14159265;
      }

      if (v4 != -3.14159265)
      {
        v3 = v2[1];
      }

      *v1 = point;
      v1[1] = v3;
    }
  }

LABEL_36:
  result.hi = v3;
  result.lo = point;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.expanded(radius:)(Swift::Double radius)
{
  v3 = *v2;
  v4 = v2[1];
  if (*v2 - v4 != 6.28318531)
  {
    v5 = v4 - v3;
    v6 = v4 - v3 + 6.28318531;
    if (v6 <= 0.0)
    {
      v6 = -1.0;
    }

    if (v5 < 0.0)
    {
      v5 = v6;
    }

    if (radius + radius + v5 >= 6.28318531)
    {
      if (qword_1ECB50AD0 != -1)
      {
        v11 = v1;
        swift_once();
        v1 = v11;
      }

      v4 = *(&xmmword_1ECB528E0 + 1);
      v3 = *&xmmword_1ECB528E0;
    }

    else
    {
      v7 = radius;
      v8 = v1;
      v9 = remainder(v3 - radius, 6.28318531);
      radius = remainder(v4 + v7, 6.28318531);
      v1 = v8;
      v10 = 3.14159265;
      if (v9 == -3.14159265)
      {
        v3 = 3.14159265;
      }

      else
      {
        v3 = v9;
      }

      if (v3 == 3.14159265)
      {
        v10 = radius;
      }

      if (radius == -3.14159265)
      {
        v4 = v10;
      }

      else
      {
        v4 = radius;
      }
    }
  }

  *v1 = v3;
  v1[1] = v4;
  result.hi = v3;
  result.lo = radius;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.union(with:)(VisualLookUp::S1Interval with)
{
  v5 = *v1;
  v4 = v1[1];
  v7 = *v3;
  v6 = v3[1];
  if (*v1 - v4 == 6.28318531)
  {
    *v2 = v7;
LABEL_3:
    v2[1] = v6;
    goto LABEL_46;
  }

  if (v6 < v7)
  {
    v8 = v7 <= v4;
    if (v4 <= v6)
    {
      v8 = 1;
    }

    v9 = v5 > v6 && v7 > v5;
    v10 = v7 - v6;
    if (!v9 && v10 != 6.28318531)
    {
      if (!v8)
      {
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    if (v10 == 6.28318531)
    {
      v8 = 0;
    }

    if (v8)
    {
LABEL_26:
      *v2 = v5;
      goto LABEL_3;
    }

LABEL_27:
    if (v10 == 6.28318531)
    {
LABEL_28:
      *v2 = v5;
      v2[1] = v4;
      goto LABEL_46;
    }

    if (v4 >= v5)
    {
      if (v5 > v7)
      {
        goto LABEL_40;
      }
    }

    else if (v5 <= v7)
    {
      goto LABEL_28;
    }

    if (v7 <= v4)
    {
      goto LABEL_28;
    }

LABEL_40:
    v15 = v7 - v4;
    if (v7 - v4 < 0.0)
    {
      v15 = v7 + 3.14159265 - (v4 + -3.14159265);
    }

    v16 = v5 + 3.14159265 - (v6 + -3.14159265);
    if (v5 - v6 >= 0.0)
    {
      v16 = v5 - v6;
    }

    if (v15 >= v16)
    {
      goto LABEL_45;
    }

    goto LABEL_26;
  }

  v11 = v7 <= v4;
  if (v4 > v6)
  {
    v11 = 0;
  }

  if (v7 > v5 || v5 > v6)
  {
    if (v11)
    {
      goto LABEL_26;
    }

    v10 = v7 - v6;
    goto LABEL_27;
  }

  if (!v11)
  {
LABEL_45:
    *v2 = v7;
    v2[1] = v4;
    goto LABEL_46;
  }

LABEL_30:
  v13 = v2;
  if (S1Interval.contains(interval:)(__PAIR128__(*&v5, *&v4)))
  {
    *v13 = v7;
    v13[1] = v6;
  }

  else
  {
    v14 = v13;
    if (qword_1ECB50AD0 != -1)
    {
      swift_once();
      v14 = v13;
    }

    *&v4 = xmmword_1ECB528E0;
    *v14 = xmmword_1ECB528E0;
  }

LABEL_46:
  result.hi = v5;
  result.lo = v4;
  return result;
}

BOOL == infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (*a1 - v2 == 6.28318531)
  {
    return *a2 - v3 == 6.28318531;
  }

  return 0;
}

{
  return *a1 == *a2;
}

{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (v2 >= *a1)
  {
    return 0;
  }

  return v3 < *a2;
}

{
  return a1[1] == a2[1] && *a1 == *a2;
}

{
  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

{
  return a1[1] == a2[1] && *a1 == *a2;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(p1:p2:)(Swift::Double p1, Swift::Double p2)
{
  if (p1 == -3.14159265)
  {
    p1 = 3.14159265;
  }

  if (p2 == -3.14159265)
  {
    p2 = 3.14159265;
  }

  v3 = p2 + 3.14159265 - (p1 + -3.14159265);
  if (p2 - p1 >= 0.0)
  {
    v3 = p2 - p1;
  }

  v4 = v3 > 3.14159265;
  if (v3 <= 3.14159265)
  {
    v5 = p1;
  }

  else
  {
    v5 = p2;
  }

  if (!v4)
  {
    p1 = p2;
  }

  *v2 = v5;
  v2[1] = p1;
  result.hi = p2;
  result.lo = p1;
  return result;
}

double sub_1D9A95558()
{
  result = 3.14159265;
  xmmword_1ECB528D0 = xmmword_1D9C90150;
  return result;
}

double sub_1D9A95594()
{
  result = -3.14159265;
  xmmword_1ECB528E0 = xmmword_1D9C90160;
  return result;
}

__n128 sub_1D9A955D0@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

VisualLookUp::S1Interval __swiftcall S1Interval.init(point:)(Swift::Double point)
{
  v2 = 3.14159265;
  if (point == -3.14159265)
  {
    point = 3.14159265;
  }

  *v1 = point;
  v1[1] = point;
  result.hi = v2;
  result.lo = point;
  return result;
}

double static S1Interval.positiveDistance(_:_:)(double a1, double a2)
{
  v2 = a2 - a1;
  result = a2 + 3.14159265 - (a1 + -3.14159265);
  if (v2 >= 0.0)
  {
    return v2;
  }

  return result;
}

Swift::Bool __swiftcall S1Interval.fastContains(point:)(Swift::Double point)
{
  v3 = *v1;
  v2 = v1[1];
  if (v2 < *v1)
  {
    if (v3 <= point || v2 >= point)
    {
      return v3 - v2 != 6.28318531;
    }

    return 0;
  }

  if (v3 > point)
  {
    return 0;
  }

  return v2 >= point;
}

BOOL sub_1D9A956B8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2 && v2 == v3)
  {
    return 1;
  }

  if (*a1 - v2 == 6.28318531)
  {
    return *a2 - v3 == 6.28318531;
  }

  return 0;
}

id sub_1D9A95728(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB528F8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = (&v87 - v9);
  v105 = sub_1D9C7BACC();
  v10 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7C78C();
  v97 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v87 - v15;
  v17 = sub_1D9C7C5AC();
  v19 = v18;
  v20 = sub_1D9C7C5BC();
  v22 = v21;
  v99 = a1;
  v23 = sub_1D9C7CA7C();
  v98 = v17;
  v24 = v17 == 0xD00000000000001BLL;
  v25 = v19;
  v106 = v12;
  if ((!v24 || 0x80000001D9CA7E60 != v19) && (sub_1D9C7E7DC() & 1) == 0)
  {
    if (v98 == 0xD000000000000020 && 0x80000001D9CA7E80 == v19 || (sub_1D9C7E7DC() & 1) != 0)
    {
      v57 = sub_1D9C7CA5C();
      v58 = *(v57 + 16);
      if (v58)
      {
        v90 = v25;
        v91 = v20;
        v92 = v22;
        v93 = v23;
        v59 = *(v97 + 16);
        v60 = *(v97 + 80);
        v94 = v57;
        v61 = v57 + ((v60 + 32) & ~v60);
        v101 = *(v97 + 72);
        v102 = v59;
        v100 = (v10 + 8);
        v62 = (v97 + 8);
        v63 = MEMORY[0x1E69E7CC0];
        v64 = v103;
        do
        {
          v102(v64, v61, v12);
          v65 = v104;
          sub_1D9C7C77C();
          v66 = sub_1D9C7BAAC();
          v68 = v67;
          (*v100)(v65, v105);
          (*v62)(v64, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1D9AF9940(0, *(v63 + 2) + 1, 1, v63);
          }

          v70 = *(v63 + 2);
          v69 = *(v63 + 3);
          if (v70 >= v69 >> 1)
          {
            v63 = sub_1D9AF9940((v69 > 1), v70 + 1, 1, v63);
          }

          *(v63 + 2) = v70 + 1;
          v71 = &v63[16 * v70];
          *(v71 + 4) = v66;
          *(v71 + 5) = v68;
          v61 += v101;
          --v58;
          v12 = v106;
        }

        while (v58);

        v23 = v93;
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
      }

      v42 = sub_1D9A6C960(v63);

      if (!v42)
      {
        v82 = v88;
        static Logger.argos.getter(v88);
        v83 = sub_1D9C7D8BC();
        v84 = sub_1D9C7E09C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_1D9962000, v83, v84, "Failed to render shopping cards.", v85, 2u);
          MEMORY[0x1DA7405F0](v85, -1, -1);
        }

        (*(v95 + 8))(v82, v96);
        v56 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_36;
        }

        goto LABEL_48;
      }

      v78 = sub_1D9C7CA5C();
      if (*(v78 + 16))
      {
        v79 = v97;
        v80 = v89;
        (*(v97 + 16))(v89, v78 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v12);
        v81 = 0;
      }

      else
      {
        v81 = 1;
        v79 = v97;
        v80 = v89;
      }

      (*(v79 + 56))(v80, v81, 1, v12);
      v72 = v80;
      goto LABEL_34;
    }

    v86 = v99;
    v53 = sub_1D9C7CA5C();
    MEMORY[0x1EEE9AC00](v53);
    v54 = &v87 - 4;
    *(&v87 - 2) = v86;
    v55 = sub_1D9A97748;
LABEL_20:
    v56 = sub_1D9BE8408(v55, v54, v53);

    goto LABEL_35;
  }

  v26 = sub_1D9C7CA5C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v90 = v19;
    v91 = v20;
    v92 = v22;
    v93 = v23;
    v28 = *(v97 + 16);
    v29 = *(v97 + 80);
    v89 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v101 = *(v97 + 72);
    v102 = v28;
    v31 = (v10 + 8);
    v103 = (v97 + 16);
    v32 = (v97 + 8);
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      v34 = v106;
      v102(v16, v30, v106);
      v35 = v104;
      sub_1D9C7C77C();
      v36 = sub_1D9C7BAAC();
      v38 = v37;
      (*v31)(v35, v105);
      (*v32)(v16, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D9AF9940(0, *(v33 + 2) + 1, 1, v33);
      }

      v40 = *(v33 + 2);
      v39 = *(v33 + 3);
      if (v40 >= v39 >> 1)
      {
        v33 = sub_1D9AF9940((v39 > 1), v40 + 1, 1, v33);
      }

      *(v33 + 2) = v40 + 1;
      v41 = &v33[16 * v40];
      *(v41 + 4) = v36;
      *(v41 + 5) = v38;
      v30 += v101;
      --v27;
    }

    while (v27);

    v23 = v93;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v42 = sub_1D9A6C94C(v33);

  v43 = v106;
  v44 = v100;
  if (!v42)
  {
    v48 = v94;
    static Logger.argos.getter(v94);
    v49 = sub_1D9C7D8BC();
    v50 = sub_1D9C7E09C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D9962000, v49, v50, "Fallback to default rendering for web images.", v51, 2u);
      MEMORY[0x1DA7405F0](v51, -1, -1);
    }

    (*(v95 + 8))(v48, v96);
    v52 = v99;
    v53 = sub_1D9C7CA5C();
    MEMORY[0x1EEE9AC00](v53);
    v54 = &v87 - 4;
    *(&v87 - 2) = v52;
    v55 = sub_1D9A977E4;
    goto LABEL_20;
  }

  v45 = sub_1D9C7CA5C();
  if (*(v45 + 16))
  {
    v46 = v97;
    (*(v97 + 16))(v44, v45 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v43);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v97;
  }

  (*(v46 + 56))(v44, v47, 1, v43);
  v72 = v44;
LABEL_34:
  sub_1D9A97764(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D9C88F90;
  *(v56 + 32) = v42;
LABEL_35:

  if (!(v56 >> 62))
  {
LABEL_36:
    v73 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_37;
  }

LABEL_48:
  v73 = sub_1D9C7E50C();
LABEL_37:

  if (v73)
  {
    v73 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
    sub_1D9A976CC();
    v74 = sub_1D9C7DF1C();

    [v73 setResults_];

    v75 = sub_1D9C7DC4C();

    [v73 setBundleIdentifier_];

    v76 = sub_1D9C7DC4C();

    [v73 setTitle_];

    [v73 setMaxInitiallyVisibleResults_];
  }

  else
  {
  }

  return v73;
}

id sub_1D9A961B4(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v94 - v6;
  v118 = sub_1D9C7D36C();
  v110 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1D9C7C0AC();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D9C7C42C();
  v9 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v95 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  v22 = sub_1D9C7C82C();
  v24 = v23;
  v25 = sub_1D9C7C3FC();
  v27 = v26;
  v108 = a1;
  v104 = sub_1D9C7C83C();
  v103 = v25;
  v107 = v22;
  if ((v22 != 0xD00000000000001BLL || 0x80000001D9CA7E60 != v24) && (sub_1D9C7E7DC() & 1) == 0)
  {
    if (v22 == 0xD000000000000020 && 0x80000001D9CA7E80 == v24 || (sub_1D9C7E7DC() & 1) != 0)
    {
      v62 = sub_1D9C7BB2C();
      v63 = *(v62 + 16);
      if (v63)
      {
        v102 = v4;
        v105 = v24;
        v106 = v27;
        v97 = v9;
        v65 = *(v9 + 16);
        v64 = v9 + 16;
        v112 = v65;
        v66 = (*(v64 + 64) + 32) & ~*(v64 + 64);
        v99 = v62;
        v67 = v62 + v66;
        v68 = *(v64 + 56);
        ++v110;
        v111 = v68;
        ++v109;
        v113 = v64;
        v69 = (v64 - 8);
        v70 = MEMORY[0x1E69E7CC0];
        v71 = v115;
        do
        {
          v72 = v114;
          v73 = v119;
          v112(v114, v67, v119);
          sub_1D9C7C41C();
          v74 = v117;
          sub_1D9C7C08C();
          v75 = sub_1D9C7D34C();
          v77 = v76;
          (*v110)(v74, v118);
          (*v109)(v71, v116);
          (*v69)(v72, v73);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D9AF9940(0, *(v70 + 2) + 1, 1, v70);
          }

          v79 = *(v70 + 2);
          v78 = *(v70 + 3);
          if (v79 >= v78 >> 1)
          {
            v70 = sub_1D9AF9940((v78 > 1), v79 + 1, 1, v70);
          }

          *(v70 + 2) = v79 + 1;
          v80 = &v70[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v77;
          v67 += v111;
          --v63;
        }

        while (v63);

        v9 = v97;
        v4 = v102;
      }

      else
      {

        v70 = MEMORY[0x1E69E7CC0];
      }

      v46 = sub_1D9A6C960(v70);

      if (!v46)
      {
        static Logger.argos.getter(v4);
        v90 = sub_1D9C7D8BC();
        v91 = sub_1D9C7E09C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1D9962000, v90, v91, "Failed to render shopping cards.", v92, 2u);
          MEMORY[0x1DA7405F0](v92, -1, -1);
        }

        (*(v100 + 8))(v4, v101);
        v61 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_38;
        }

        goto LABEL_46;
      }

      v81 = sub_1D9C7BB2C();
      if (*(v81 + 16))
      {
        v82 = v95;
        v83 = v119;
        (*(v9 + 16))(v95, v81 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v119);

        v84 = v96;
        (*(v9 + 32))(v96, v82, v83);
        sub_1D9A96DA0(v84, v46);
        (*(v9 + 8))(v84, v83);
        goto LABEL_36;
      }

LABEL_35:

      goto LABEL_36;
    }

    v93 = v108;
    v58 = sub_1D9C7BB2C();
    MEMORY[0x1EEE9AC00](v58);
    v59 = &v94 - 4;
    *(&v94 - 2) = v93;
    v60 = sub_1D9A976B4;
LABEL_19:
    v61 = sub_1D9BE8780(v60, v59, v58);

    goto LABEL_37;
  }

  v105 = v24;
  v106 = v27;
  v28 = sub_1D9C7BB2C();
  v29 = *(v28 + 16);
  v97 = v9;
  if (v29)
  {
    v31 = *(v9 + 16);
    v30 = (v9 + 16);
    v113 = v31;
    v32 = (v30[64] + 32) & ~v30[64];
    v96 = v28;
    v33 = v28 + v32;
    v34 = *(v30 + 7);
    v111 = v110 + 1;
    v112 = v34;
    v110 = v109 + 1;
    v114 = v30;
    v35 = (v30 - 8);
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = v119;
      v113(v21, v33, v119);
      v38 = v115;
      sub_1D9C7C41C();
      v39 = v117;
      sub_1D9C7C08C();
      v40 = sub_1D9C7D34C();
      v42 = v41;
      (*v111)(v39, v118);
      (*v110)(v38, v116);
      (*v35)(v21, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1D9AF9940(0, *(v36 + 2) + 1, 1, v36);
      }

      v44 = *(v36 + 2);
      v43 = *(v36 + 3);
      if (v44 >= v43 >> 1)
      {
        v36 = sub_1D9AF9940((v43 > 1), v44 + 1, 1, v36);
      }

      *(v36 + 2) = v44 + 1;
      v45 = &v36[16 * v44];
      *(v45 + 4) = v40;
      *(v45 + 5) = v42;
      v33 += v112;
      --v29;
    }

    while (v29);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v46 = sub_1D9A6C94C(v36);

  if (!v46)
  {
    v52 = v102;
    static Logger.argos.getter(v102);
    v53 = sub_1D9C7D8BC();
    v54 = sub_1D9C7E09C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D9962000, v53, v54, "Fallback to default rendering for web images.", v55, 2u);
      v56 = v55;
      v52 = v102;
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    (*(v100 + 8))(v52, v101);
    v57 = v108;
    v58 = sub_1D9C7BB2C();
    MEMORY[0x1EEE9AC00](v58);
    v59 = &v94 - 4;
    *(&v94 - 2) = v57;
    v60 = sub_1D9A977CC;
    goto LABEL_19;
  }

  v47 = sub_1D9C7BB2C();
  if (!*(v47 + 16))
  {
    goto LABEL_35;
  }

  v48 = v97;
  v49 = v98;
  v50 = v119;
  (*(v97 + 16))(v98, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v119);

  v51 = v99;
  (*(v48 + 32))(v99, v49, v50);
  sub_1D9A96DA0(v51, v46);
  (*(v48 + 8))(v51, v50);
LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D9C88F90;
  *(v61 + 32) = v46;
LABEL_37:

  if (!(v61 >> 62))
  {
LABEL_38:
    v85 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_46:
  v85 = sub_1D9C7E50C();
LABEL_39:

  if (v85)
  {
    v85 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
    sub_1D9A976CC();
    v86 = sub_1D9C7DF1C();

    [v85 setResults_];

    v87 = sub_1D9C7DC4C();

    [v85 setBundleIdentifier_];

    v88 = sub_1D9C7DC4C();

    [v85 setTitle_];

    [v85 setMaxInitiallyVisibleResults_];
  }

  else
  {
  }

  return v85;
}

id sub_1D9A96DA0(uint64_t a1, void *a2)
{
  v3 = sub_1D9C7C07C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7C40C();
  result = (*(v4 + 88))(v6, v3);
  if (result != *MEMORY[0x1E69BD118] && result != *MEMORY[0x1E69BD110])
  {
    if (result == *MEMORY[0x1E69BD120])
    {
      return [a2 setPlacement_];
    }

    else if (result == *MEMORY[0x1E69BD128])
    {
      return [a2 setPlacement_];
    }

    else if (result == *MEMORY[0x1E69BD130])
    {
      return [a2 setPlacement_];
    }

    else
    {
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_1D9A96F2C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = sub_1D9C7C07C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9C7D36C();
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7C0AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  sub_1D9C7C41C();
  sub_1D9C7C08C();
  v33 = sub_1D9C7D34C();
  v15 = v14;
  (*(v4 + 8))(v6, v34);
  v16 = *(v8 + 8);
  v16(v13, v7);
  sub_1D9C7C41C();
  v17 = sub_1D9C7C09C();
  v19 = v18;
  v16(v10, v7);
  v20 = sub_1D9C7C3FC();
  v22 = v21;
  v23 = sub_1D9C7C82C();
  v24 = v33;
  v26 = sub_1D9A6FDF8(v33, v15, v17, v19, v20, v22, v23, v25);
  sub_1D99A5748(v24, v15);

  sub_1D99A5748(v17, v19);
  if (v26)
  {
    v27 = v30;
    sub_1D9C7C40C();
    v28 = (*(v31 + 88))(v27, v32);
    if (v28 != *MEMORY[0x1E69BD118] && v28 != *MEMORY[0x1E69BD110])
    {
      if (v28 == *MEMORY[0x1E69BD120])
      {
        [v26 setPlacement_];
      }

      else if (v28 == *MEMORY[0x1E69BD128])
      {
        [v26 setPlacement_];
      }

      else if (v28 == *MEMORY[0x1E69BD130])
      {
        [v26 setPlacement_];
      }

      else
      {
        (*(v31 + 8))(v30, v32);
      }
    }
  }

  return v26;
}

uint64_t sub_1D9A972F4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_1D9C7BACC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  sub_1D9C7C77C();
  v9 = sub_1D9C7BAAC();
  v24 = v10;
  v11 = *(v3 + 8);
  v11(v8, v2);
  sub_1D9C7C77C();
  v12 = sub_1D9C7BABC();
  v14 = v13;
  v11(v6, v2);
  v15 = sub_1D9C7C5BC();
  v17 = v16;
  v18 = sub_1D9C7C5AC();
  v19 = v24;
  v21 = sub_1D9A6FDF8(v9, v24, v12, v14, v15, v17, v18, v20);
  sub_1D99A5748(v9, v19);

  result = sub_1D99A5748(v12, v14);
  *v26 = v21;
  return result;
}

uint64_t sub_1D9A974BC(uint64_t a1)
{
  v2 = sub_1D9C7C84C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7BB2C();
  v21 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = a1;
    v20 = v6;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v13 = MEMORY[0x1E69E7CC0];
    v10(v5, v11, v2);
    while (1)
    {
      v14 = sub_1D9A961B4(v5);
      v15 = (*(v8 - 8))(v5, v2);
      if (v14)
      {
        MEMORY[0x1DA73E0E0](v15);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
        v13 = v21;
      }

      v11 += v12;
      if (!--v7)
      {
        break;
      }

      v9(v5, v11, v2);
    }

    a1 = v19;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D9C7BB3C();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v13;
}

unint64_t sub_1D9A976CC()
{
  result = qword_1ECB528F0;
  if (!qword_1ECB528F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB528F0);
  }

  return result;
}

id sub_1D9A97718@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9A96F2C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9A97764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB528F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A977FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = *(v2 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName);
    v4 = *(v2 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName + 8);
  }

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = sub_1D99ED894(a1, v4);
    v9 = v8;

    if (v9)
    {
      return *(*(*(v5 + 56) + 8 * v7) + 16);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D9A978B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v46 = a4;
  v45 = sub_1D9C7D8DC();
  v8 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    a2 = *(v4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName);
    v17 = *(v4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName + 8);
  }

  v18 = *(v4 + 16);
  v19 = *(v18 + 16);

  if (v19 && (v20 = sub_1D99ED894(a2, v17), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
    if (*(v22 + 16) > a1)
    {

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(v22 + 16) > a1)
      {
        v24 = v22 + 32 * a1;
        v25 = *(v24 + 48);
        v43 = *(v24 + 32);
        v44 = v25;
        v26 = *(&v43 + 1);
        sub_1D99FE1B4(v43, *(&v43 + 1));

        if (v26)
        {
          v27 = v46;
          v28 = v44;
          *v46 = v43;
          v27[1] = v28;
          return result;
        }

        static Logger.argos.getter(v16);
        v40 = sub_1D9C7D8BC();
        v41 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134217984;
          *(v42 + 4) = a1;
          _os_log_impl(&dword_1D9962000, v40, v41, "returning no ontology entry for label %ld", v42, 0xCu);
          MEMORY[0x1DA7405F0](v42, -1, -1);
        }

        result = (*(v8 + 8))(v16, v45);
        goto LABEL_15;
      }

      __break(1u);
      return result;
    }

    static Logger.argos.getter(v13);

    v35 = sub_1D9C7D8BC();
    v36 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 134218242;
      *(v37 + 4) = a1;
      *(v37 + 12) = 2080;
      v39 = sub_1D9A0E224(a2, v17, &v47);

      *(v37 + 14) = v39;
      _os_log_impl(&dword_1D9962000, v35, v36, "Label is out of bounds %ld, incompatible mapping %s used?", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1DA7405F0](v38, -1, -1);
      MEMORY[0x1DA7405F0](v37, -1, -1);
    }

    else
    {
    }

    result = (*(v8 + 8))(v13, v45);
  }

  else
  {
    static Logger.argos.getter(v10);

    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315138;
      v33 = sub_1D9A0E224(a2, v17, &v47);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D9962000, v29, v30, "Mapping %s is missing, unable to retrieve ontology node", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    result = (*(v8 + 8))(v10, v45);
  }

LABEL_15:
  v34 = v46;
  *v46 = 0u;
  v34[1] = 0u;
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(degrees:)(Swift::Double degrees)
{
  result.radians = degrees * 0.0174532925;
  *v1 = result.radians;
  return result;
}

uint64_t S1Angle.e5.getter()
{
  v1 = round(*v0 * 57.2957795 * 100000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t S1Angle.e6.getter()
{
  v1 = round(*v0 * 57.2957795 * 1000000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t S1Angle.e7.getter()
{
  v1 = round(*v0 * 57.2957795 * 10000000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e5:)(Swift::Int64 e5)
{
  result.radians = e5 * 0.00001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e6:)(Swift::Int64 e6)
{
  result.radians = e6 * 0.000001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

VisualLookUp::S1Angle __swiftcall S1Angle.init(e7:)(Swift::Int64 e7)
{
  result.radians = e7 * 0.0000001 * 0.0174532925;
  *v1 = result.radians;
  return result;
}

BOOL < infix(_:_:)(double *a1, double *a2)
{
  return *a1 < *a2;
}

{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 >= *a1)
  {
    return a1[1] < a2[1];
  }

  return 0;
}

{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 >= v3)
  {
    return a1[2] < a2[2];
  }

  return 0;
}

double + infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double - infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double * infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3;
  *a2 = result;
  return result;
}

unint64_t sub_1D9A97FE4()
{
  result = qword_1ECB52900;
  if (!qword_1ECB52900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52900);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for S1Angle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for S1Angle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D9A98094()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710A0);
  __swift_project_value_buffer(v0, qword_1ECB710A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "landmark";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "storefront_list";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A98264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9A982F8(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_1D9A988B4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D9A982F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB52AA0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB52AA0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A9FA84(v12, v19, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    sub_1D9A9FA84(v19, v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9A9FA24(v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB52AA8);
      v32 = v41;
      sub_1D9A9FA84(v16, v41, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA84(v32, v25, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB52AA8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB52AA8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB52AA8);
    return sub_1D99A6AE0(v33, &qword_1ECB52AA8);
  }

  else
  {
    v36 = v40;
    sub_1D9A9FA84(v33, v40, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB52AA8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB52AA0);
    sub_1D9A9FA84(v36, v37, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A988B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AB0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB52AA0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB52AA0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9A9FA84(v12, v19, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    sub_1D9A9FA84(v19, v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB52AB0);
      v32 = v41;
      sub_1D9A9FA84(v16, v41, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
      sub_1D9A9FA84(v32, v25, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9A9FA24(v16, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB52AB0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB52AB0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB52AB0);
    return sub_1D99A6AE0(v33, &qword_1ECB52AB0);
  }

  else
  {
    v36 = v40;
    sub_1D9A9FA84(v33, v40, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB52AB0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB52AA0);
    sub_1D9A9FA84(v36, v37, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9A98E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D99AB100(v3, &v13 - v9, &qword_1ECB52AA0);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A99238(v3, a1, a2, a3);
  }

  else
  {
    sub_1D9A99000(v3, a1, a2, a3);
  }

  result = sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Com_Apple_Visualintelligence_AspireResult(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A99000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB52AA0);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB52AA0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9A9FA84(v7, v10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
    sub_1D9C7D80C();
    return sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
  }

  result = sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  __break(1u);
  return result;
}

uint64_t sub_1D9A99238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB52AA0);
  v11 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB52AA0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A9FA84(v7, v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9C7D80C();
    return sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  }

  result = sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  __break(1u);
  return result;
}

uint64_t sub_1D9A99470@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9952C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52A98, type metadata accessor for Com_Apple_Visualintelligence_AspireResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A995CC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A80, type metadata accessor for Com_Apple_Visualintelligence_AspireResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A99638()
{
  sub_1D9A9F0AC(&qword_1ECB52A80, type metadata accessor for Com_Apple_Visualintelligence_AspireResult);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A996B8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710B8);
  __swift_project_value_buffer(v0, qword_1ECB710B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D9C8CDC0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D9C7D81C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location_point";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "popularity";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "coverage";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "localized_names";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A99988()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          sub_1D9C7D54C();
        }

        else if (result == 6)
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
          sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
          sub_1D9C7D5FC();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 3)
      {
        sub_1D9A99AF0();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A99AF0()
{
  type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A99BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D9C7D7CC(), !v4))
  {
    v11 = *(v3 + 24);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D9C7D7CC(), !v4))
    {
      result = sub_1D9A99D54(v3, a1, a2, a3);
      if (!v4)
      {
        if (*(v3 + 32) != 0.0)
        {
          sub_1D9C7D77C();
        }

        if (*(v3 + 36) != 0.0)
        {
          sub_1D9C7D77C();
        }

        if (*(*(v3 + 40) + 16))
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
          sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
          sub_1D9C7D7FC();
        }

        type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A99D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB52AC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AC8);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
}

uint64_t sub_1D9A99F74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = MEMORY[0x1E69E7CC0];
  sub_1D9C7D3BC();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A9A05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B10, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9A0FC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9A168()
{
  sub_1D9A9F0AC(&qword_1ECB52A60, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9A1E8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710D0);
  __swift_project_value_buffer(v0, qword_1ECB710D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "geo_src";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "age";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9A438()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 6)
      {
        sub_1D9A9A500();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1D9C7D5BC();
    }
  }

  return result;
}

uint64_t sub_1D9A9A500()
{
  type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D9C7D33C();
  sub_1D9A9F0AC(&qword_1ECB52B20, MEMORY[0x1E69AA930]);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A9A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 == 0.0 || (result = sub_1D9C7D7BC(), !v4))
  {
    if (*(v3 + 8) == 0.0 || (result = sub_1D9C7D7BC(), !v4))
    {
      v8 = *(v3 + 24);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1D9C7D7CC(), !v4))
      {
        result = sub_1D9A9A6B0(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D9C7D33C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB52AD8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AD8);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1D9A9F0AC(&qword_1ECB52B20, MEMORY[0x1E69AA930]);
  sub_1D9C7D80C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D9A9A8D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = sub_1D9C7D33C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A9A9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B18, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9AA48(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9AAB4()
{
  sub_1D9A9F0AC(&qword_1ECB52A40, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9AB34()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB710E8);
  __swift_project_value_buffer(v0, qword_1ECB710E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "pois";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9ACA0()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0);
        sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9AD80()
{
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0), sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A9AEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B28, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9AF50(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9AFBC()
{
  sub_1D9A9F0AC(&qword_1ECB52A20, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9B038(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D9A22A44(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9B0E0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71100);
  __swift_project_value_buffer(v0, qword_1ECB71100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pref_locale";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pref_name";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pref_address";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "pref_phone";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "localized_name";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "pref_category_id";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9B438()
{
  type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  v2 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v6 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v8 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v9 = (v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  qword_1ECB52908 = v0;
  return result;
}

uint64_t sub_1D9A9B568(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  v10 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v40 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  v14 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v41 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v16 = (v1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  v43 = v16;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  v18 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  sub_1D99AB100(a1 + v18, v8, &qword_1ECB52B08);
  swift_beginAccess();
  sub_1D9A91EA0(v8, v2 + v9, &qword_1ECB52B08);
  swift_endAccess();
  v19 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  swift_beginAccess();
  *v11 = v21;
  v11[1] = v20;

  v22 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  *v12 = v24;
  v12[1] = v23;

  v25 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v26 = v42;
  sub_1D99AB100(a1 + v25, v42, &qword_1ECB52AF8);
  v27 = v40;
  swift_beginAccess();
  sub_1D9A91EA0(v26, v2 + v27, &qword_1ECB52AF8);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v15 = v30;
  v15[1] = v29;

  v31 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v41;
  swift_beginAccess();
  *(v2 + v33) = v32;

  v34 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];

  v37 = v43;
  swift_beginAccess();
  *v37 = v36;
  v37[1] = v35;

  return v2;
}

uint64_t sub_1D9A9BA00()
{
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location, &qword_1ECB52B08);

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress, &qword_1ECB52AF8);

  return swift_deallocClassInstance();
}

void sub_1D9A9BB1C()
{
  sub_1D9A9BC90(319, &qword_1ECB52958, type metadata accessor for Com_Apple_Visualintelligence_LatLng, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9A9BC90(319, &qword_1ECB52960, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D9A9BC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D9A9BD5C()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A9BE08()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A9BED4()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9A9BF50()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = *(v0 + v2);
    type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(0);
    swift_allocObject();
    *(v1 + v2) = sub_1D9A9B568(v3);
  }

  return sub_1D9A9BFF8();
}

uint64_t sub_1D9A9BFF8()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_1D9A9C3EC();
          }

          else if (result == 8)
          {
LABEL_4:
            sub_1D9A9C4C8();
          }
        }

        else
        {
          if (result != 5)
          {
            goto LABEL_4;
          }

          sub_1D9A9C310();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          sub_1D9A9C1B0();
        }

        else if (result == 2)
        {
          sub_1D9A9C234();
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9C1B0()
{
  swift_beginAccess();
  sub_1D9C7D5EC();
  return swift_endAccess();
}

uint64_t sub_1D9A9C234()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A9C310()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A9C3EC()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
  sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);
  sub_1D9C7D5FC();
  return swift_endAccess();
}

uint64_t sub_1D9A9C4C8()
{
  swift_beginAccess();
  sub_1D9C7D5CC();
  return swift_endAccess();
}

uint64_t sub_1D9A9C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0);
  result = sub_1D9A9C5BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A9C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1D9C7D7EC(), !v4))
  {
    result = sub_1D9A9C900(a1, a2, a3, a4);
    if (!v4)
    {
      v10 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
      swift_beginAccess();
      v11 = *v10;
      v12 = v10[1];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        sub_1D9C7D7CC();
      }

      swift_beginAccess();

      sub_1D9C7D7CC();

      sub_1D9A9CB28(a1, a2, a3, a4);
      v14 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_1D9C7D7CC();
      }

      v18 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
      swift_beginAccess();
      if (*(*(a1 + v18) + 16))
      {
        type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
        sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);

        sub_1D9C7D7FC();
      }

      v19 = (a1 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
      result = swift_beginAccess();
      v20 = *v19;
      v21 = v19[1];
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {

        sub_1D9C7D7CC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52B08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52B08);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
}

uint64_t sub_1D9A9CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52AF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52AF8);
  }

  sub_1D9A9FA84(v7, v11, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
  sub_1D9C7D80C();
  return sub_1D9A9FA24(v11, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
}

BOOL sub_1D9A9CD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  v85 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF0);
  MEMORY[0x1EEE9AC00](v83);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v77 - v12;
  v13 = type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
  v14 = *(v13 - 8);
  v88 = v13;
  v89 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v86 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B00);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52B08);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v87 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  swift_beginAccess();
  v24 = *(a1 + 16);
  swift_beginAccess();
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  v79 = v6;
  v80 = v4;
  v81 = v8;
  v25 = a2;
  v26 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  v27 = a1;
  v28 = a1 + v26;
  v29 = v25;
  sub_1D99AB100(v28, v23, &qword_1ECB52B08);
  v30 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__location;
  swift_beginAccess();
  v31 = *(v16 + 48);
  sub_1D99AB100(v23, v18, &qword_1ECB52B08);
  sub_1D99AB100(v25 + v30, &v18[v31], &qword_1ECB52B08);
  v32 = v88;
  v33 = *(v89 + 6);
  v34 = v18;
  if (v33(v18, 1, v88) == 1)
  {

    sub_1D99A6AE0(v23, &qword_1ECB52B08);
    v35 = v33(&v18[v31], 1, v32);
    v36 = v27;
    if (v35 == 1)
    {
      sub_1D99A6AE0(v34, &qword_1ECB52B08);
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v52 = v87;
  sub_1D99AB100(v18, v87, &qword_1ECB52B08);
  if (v33(&v18[v31], 1, v32) == 1)
  {

    sub_1D99A6AE0(v23, &qword_1ECB52B08);
    sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
LABEL_16:
    v53 = &qword_1ECB52B00;
    v54 = v34;
LABEL_25:
    sub_1D99A6AE0(v54, v53);
    goto LABEL_26;
  }

  v89 = v23;
  v78 = v18;
  v55 = &v18[v31];
  v56 = v86;
  sub_1D9A9FA84(v55, v86, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  v36 = v27;
  if (*v52 != *v56 || v52[1] != v56[1])
  {

    sub_1D9A9FA24(v56, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
    sub_1D99A6AE0(v89, &qword_1ECB52B08);
    sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
    v54 = v78;
    v53 = &qword_1ECB52B08;
    goto LABEL_25;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);

  v57 = sub_1D9C7DC2C();
  sub_1D9A9FA24(v56, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D99A6AE0(v89, &qword_1ECB52B08);
  sub_1D9A9FA24(v52, type metadata accessor for Com_Apple_Visualintelligence_LatLng);
  sub_1D99A6AE0(v78, &qword_1ECB52B08);
  if ((v57 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  v37 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefLocale);
  swift_beginAccess();
  if ((v38 != *v40 || v39 != v40[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v41 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefName);
  swift_beginAccess();
  if ((v42 != *v44 || v43 != v44[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v46 = v84;
  sub_1D99AB100(v36 + v45, v84, &qword_1ECB52AF8);
  v47 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefAddress;
  swift_beginAccess();
  v48 = *(v83 + 48);
  v49 = v81;
  sub_1D99AB100(v46, v81, &qword_1ECB52AF8);
  sub_1D99AB100(v29 + v47, v49 + v48, &qword_1ECB52AF8);
  v50 = *(v85 + 48);
  v51 = v80;
  if (v50(v49, 1, v80) != 1)
  {
    v58 = v82;
    sub_1D99AB100(v49, v82, &qword_1ECB52AF8);
    if (v50(v49 + v48, 1, v51) != 1)
    {
      v60 = v49 + v48;
      v61 = v79;
      sub_1D9A9FA84(v60, v79, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      v62 = sub_1D9A9FAEC(v58, v61);
      sub_1D9A9FA24(v61, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      sub_1D99A6AE0(v46, &qword_1ECB52AF8);
      sub_1D9A9FA24(v58, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
      sub_1D99A6AE0(v49, &qword_1ECB52AF8);
      if (v62)
      {
        goto LABEL_30;
      }

LABEL_26:

      return 0;
    }

    sub_1D99A6AE0(v46, &qword_1ECB52AF8);
    sub_1D9A9FA24(v58, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);
    goto LABEL_24;
  }

  sub_1D99A6AE0(v46, &qword_1ECB52AF8);
  if (v50(v49 + v48, 1, v51) != 1)
  {
LABEL_24:
    v53 = &qword_1ECB52AF0;
    v54 = v49;
    goto LABEL_25;
  }

  sub_1D99A6AE0(v49, &qword_1ECB52AF8);
LABEL_30:
  v63 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  v66 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefPhone);
  swift_beginAccess();
  if ((v64 != *v66 || v65 != v66[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v67 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v68 = *(v36 + v67);
  v69 = OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__localizedName;
  swift_beginAccess();
  v70 = *(v29 + v69);

  v71 = sub_1D9A25ADC(v68, v70);

  if ((v71 & 1) == 0)
  {
    goto LABEL_26;
  }

  v72 = (v36 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  v75 = (v29 + OBJC_IVAR____TtCV12VisualLookUp42Com_Apple_Visualintelligence_StorefrontPoiP33_3CD01E9064D10407B309FE21598BAA9013_StorageClass__prefCategoryID);
  swift_beginAccess();
  if (v73 == *v75 && v74 == v75[1])
  {

    return 1;
  }

  v76 = sub_1D9C7E7DC();

  return (v76 & 1) != 0;
}

uint64_t sub_1D9A9D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D9C7D3BC();
  v4 = *(a1 + 20);
  if (qword_1ECB50B00 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1ECB52908;
}

uint64_t sub_1D9A9D90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B30, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9D9AC(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9DA18()
{
  sub_1D9A9F0AC(&qword_1ECB52A00, type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9DA98()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71118);
  __swift_project_value_buffer(v0, qword_1ECB71118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9DC60()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D5BC();
    }
  }

  return result;
}

uint64_t sub_1D9A9DCE0()
{
  if (*v0 == 0.0 || (result = sub_1D9C7D7BC(), !v1))
  {
    if (v0[1] == 0.0 || (result = sub_1D9C7D7BC(), !v1))
    {
      type metadata accessor for Com_Apple_Visualintelligence_LatLng(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A9DDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B38, type metadata accessor for Com_Apple_Visualintelligence_LatLng);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9DE80(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9DEEC()
{
  sub_1D9A9F0AC(&qword_1ECB529E0, type metadata accessor for Com_Apple_Visualintelligence_LatLng);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9DF68(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9E01C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71130);
  __swift_project_value_buffer(v0, qword_1ECB71130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D9C902E0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "country";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "country_code";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "administrative_area";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "administrative_area_code";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sub_administrative_area";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "locality";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dependent_locality";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "thoroughfare";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sub_throughfare";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "post_code";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9E3E8()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            sub_1D9C7D57C();
            goto LABEL_17;
          }

LABEL_16:
          sub_1D9C7D5CC();
          goto LABEL_17;
        }

        if (result == 8 || result == 9 || result == 10)
        {
          goto LABEL_16;
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_16;
      }

LABEL_17:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9E514()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_1D9C7D7CC(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1D9C7D7CC(), !v1))
      {
        v9 = v0[7];
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v10 || (result = sub_1D9C7D7CC(), !v1))
        {
          v11 = v0[9];
          v12 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v12 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12 || (result = sub_1D9C7D7CC(), !v1))
          {
            v13 = v0[11];
            v14 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v14 = v0[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v14 || (result = sub_1D9C7D7CC(), !v1))
            {
              if (!*(v0[12] + 16) || (result = sub_1D9C7D7AC(), !v1))
              {
                v15 = v0[14];
                v16 = HIBYTE(v15) & 0xF;
                if ((v15 & 0x2000000000000000) == 0)
                {
                  v16 = v0[13] & 0xFFFFFFFFFFFFLL;
                }

                if (!v16 || (result = sub_1D9C7D7CC(), !v1))
                {
                  v17 = v0[16];
                  v18 = HIBYTE(v17) & 0xF;
                  if ((v17 & 0x2000000000000000) == 0)
                  {
                    v18 = v0[15] & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v18 || (result = sub_1D9C7D7CC(), !v1))
                  {
                    v19 = v0[18];
                    v20 = HIBYTE(v19) & 0xF;
                    if ((v19 & 0x2000000000000000) == 0)
                    {
                      v20 = v0[17] & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v20 || (result = sub_1D9C7D7CC(), !v1))
                    {
                      type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
                      return sub_1D9C7D3AC();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9E74C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = MEMORY[0x1E69E7CC0];
  a1[13] = 0;
  a1[14] = 0xE000000000000000;
  a1[15] = 0;
  a1[16] = 0xE000000000000000;
  a1[17] = 0;
  a1[18] = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9E7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A9E830(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A9E8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B40, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9E998(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9EA04()
{
  sub_1D9A9F0AC(&qword_1ECB529C0, type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9EA84()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71148);
  __swift_project_value_buffer(v0, qword_1ECB71148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "languageCode";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "phoneticName";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A9EC90()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 4 || result == 2)
    {
      sub_1D9C7D5CC();
    }
  }

  return result;
}

uint64_t sub_1D9A9ED20()
{
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    v5 = v0[3];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (result = sub_1D9C7D7CC(), !v1))
    {
      v7 = v0[5];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1D9C7D7CC(), !v1))
      {
        type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A9EE14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A9EE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A9F0AC(&qword_1ECB52B48, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A9EF30(uint64_t a1)
{
  v2 = sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A9EF9C()
{
  sub_1D9A9F0AC(&qword_1ECB529A0, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A9F0AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9A9FA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A9FA84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A9FAEC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1D9C7E7DC() & 1) == 0 || (sub_1D9A1EF04(a1[12], a2[12]) & 1) == 0 || (a1[13] != a2[13] || a1[14] != a2[14]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[15] != a2[15] || a1[16] != a2[16]) && (sub_1D9C7E7DC() & 1) == 0 || (a1[17] != a2[17] || a1[18] != a2[18]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Visualintelligence_StructuredAddress(0);
  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FCD8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1D9A9CD50(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FDC0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Visualintelligence_LocalizedName(0);
  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A9FEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v20 - v12, &qword_1ECB52AA0);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB52AA0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB52AA0);
LABEL_9:
      type metadata accessor for Com_Apple_Visualintelligence_AspireResult(0);
      sub_1D9C7D3CC();
      sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB52AA0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB52AB8);
    goto LABEL_7;
  }

  sub_1D9A9FA84(&v13[v15], v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  v18 = sub_1D9AA09D8(v10, v7);
  sub_1D9A9FA24(v7, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  sub_1D99A6AE0(v13, &qword_1ECB52AA0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9AA0208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D33C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AE0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  v15 = v12;
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = v7;
  v27 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v16 = *(v27 + 32);
  v17 = *(v15 + 48);
  sub_1D99AB100(a1 + v16, v14, &qword_1ECB52AD8);
  v18 = a2 + v16;
  v19 = v5;
  sub_1D99AB100(v18, &v14[v17], &qword_1ECB52AD8);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v17], 1, v4) == 1)
    {
      sub_1D99A6AE0(v14, &qword_1ECB52AD8);
LABEL_15:
      sub_1D9C7D3CC();
      sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v21 = sub_1D9C7DC2C();
      return v21 & 1;
    }

    goto LABEL_11;
  }

  sub_1D99AB100(v14, v10, &qword_1ECB52AD8);
  if (v20(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_1D99A6AE0(v14, &qword_1ECB52AE0);
    goto LABEL_12;
  }

  v23 = v26;
  (*(v5 + 32))(v26, &v14[v17], v4);
  sub_1D9A9F0AC(&qword_1ECB52AE8, MEMORY[0x1E69AA930]);
  v24 = sub_1D9C7DC2C();
  v25 = *(v19 + 8);
  v25(v23, v4);
  v25(v10, v4);
  sub_1D99A6AE0(v14, &qword_1ECB52AD8);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_12:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1D9AA05F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_LocationPoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AD0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9C7E7DC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = v7;
  v21 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  v14 = *(v21 + 40);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB52AC8);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB52AC8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB52AC8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v22;
      sub_1D9A9FA84(&v13[v15], v22, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      v18 = sub_1D9AA0208(v10, v17);
      sub_1D9A9FA24(v17, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
      sub_1D99A6AE0(v13, &qword_1ECB52AC8);
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_18:
      v19 = 0;
      return v19 & 1;
    }

    sub_1D9A9FA24(v10, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint);
LABEL_12:
    sub_1D99A6AE0(v13, &qword_1ECB52AD0);
    goto LABEL_18;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D99A6AE0(v13, &qword_1ECB52AC8);
LABEL_14:
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || (sub_1D9A25ADC(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_1D9C7D3CC();
  sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9AA09D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52AC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  v20 = *(v19 + 56);
  sub_1D9AA0DD4(a1, &v25 - v17);
  sub_1D9AA0DD4(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D9AA0DD4(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9A9FA84(&v18[v20], v9, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      v21 = sub_1D9AA05F0(v15, v9);
      sub_1D9A9FA24(v9, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA24(v15, type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet);
      sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
      return v21 & 1;
    }

    v22 = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet;
    v23 = v15;
    goto LABEL_9;
  }

  sub_1D9AA0DD4(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet;
    v23 = v12;
LABEL_9:
    sub_1D9A9FA24(v23, v22);
    sub_1D99A6AE0(v18, &qword_1ECB52AC0);
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

  sub_1D9A9FA84(&v18[v20], v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  if ((sub_1D9A22A44(*v12, *v6) & 1) == 0 || (sub_1D9C7D3CC(), sub_1D9A9F0AC(&qword_1ECB51088, MEMORY[0x1E69AAC08]), (sub_1D9C7DC2C() & 1) == 0))
  {
    sub_1D9A9FA24(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9FA24(v12, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
    sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
    goto LABEL_12;
  }

  sub_1D9A9FA24(v6, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  sub_1D9A9FA24(v12, type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet);
  sub_1D9A9FA24(v18, type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D9AA0DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Visualintelligence_AspireResult.OneOf_Snippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9AA0E38()
{
  result = type metadata accessor for Com_Apple_Visualintelligence_LandmarkSnippet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Visualintelligence_StorefrontListSnippet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D9AA0F30()
{
  sub_1D9A9BC90(319, &qword_1ECB52B88, type metadata accessor for Com_Apple_Visualintelligence_LocalizedName, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9A9BC90(319, &qword_1ECB52B90, type metadata accessor for Com_Apple_Visualintelligence_LocationPoint, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9AA1070()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9A9BC90(319, &qword_1ECB52BA8, MEMORY[0x1E69AA930], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9AA11A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1D9A9BC90(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9AA1258()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Visualintelligence_StorefrontPoi._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ObjectKnowledge.knowledgeGraphID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectKnowledge.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for ObjectKnowledge()
{
  result = qword_1EDD2BB98;
  if (!qword_1EDD2BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ObjectKnowledge.shortDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectKnowledge() + 32));

  return v1;
}

uint64_t ObjectKnowledge.detailedDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObjectKnowledge() + 36));

  return v1;
}

uint64_t ObjectKnowledge.knowledgeProperties.getter()
{
  type metadata accessor for ObjectKnowledge();
}

uint64_t ObjectKnowledge.serializedDomainType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ObjectKnowledge();
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ObjectKnowledge.serializedDomainResponse.getter()
{
  v1 = v0 + *(type metadata accessor for ObjectKnowledge() + 56);
  v2 = *v1;
  sub_1D99DF410(*v1, *(v1 + 8));
  return v2;
}

uint64_t ObjectKnowledge.serializedDomainResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ObjectKnowledge() + 56);
  result = sub_1D99B3C44(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ObjectKnowledge.csuDataCarrier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ObjectKnowledge() + 60));
  v4 = v3[6];
  v5 = v3[4];
  v18 = v3[5];
  v19 = v4;
  v6 = v3[4];
  v8 = v3[2];
  v16 = v3[3];
  v7 = v16;
  v17 = v6;
  v9 = v3[1];
  v15[0] = *v3;
  v10 = v3[2];
  v11 = *v3;
  v15[1] = v3[1];
  v15[2] = v10;
  v12 = v3[6];
  *(a1 + 80) = v18;
  *(a1 + 96) = v12;
  *(a1 + 48) = v7;
  *(a1 + 64) = v5;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  v20 = *(v3 + 28);
  *(a1 + 112) = *(v3 + 28);
  *a1 = v11;
  return sub_1D99CF644(v15, v14);
}

unint64_t sub_1D9AA1748(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 7:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x4361746144757363;
      break;
    case 12:
      result = 0x65726F6373;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D9AA18AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9AA41C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9AA18E0(uint64_t a1)
{
  v2 = sub_1D9AA3A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9AA191C(uint64_t a1)
{
  v2 = sub_1D9AA3A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectKnowledge.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA3A20();
  sub_1D9C7E96C();
  LOBYTE(v38[0]) = 0;
  sub_1D9C7E6BC();
  if (!v2)
  {
    LOBYTE(v38[0]) = 1;
    sub_1D9C7E6EC();
    v57 = type metadata accessor for ObjectKnowledge();
    LOBYTE(v38[0]) = 2;
    sub_1D9C7B80C();
    sub_1D9AA45E4(&qword_1ECB52BE8, MEMORY[0x1E6968FB0]);
    sub_1D9C7E6DC();
    LOBYTE(v38[0]) = 3;
    sub_1D9C7E71C();
    LOBYTE(v38[0]) = 4;
    sub_1D9C7E6EC();
    LOBYTE(v38[0]) = 5;
    sub_1D9C7E6EC();
    LOBYTE(v38[0]) = 6;
    sub_1D9C7E6DC();
    v56 = *(v3 + v57[11]);
    v55 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BF0);
    sub_1D9AA3B70(&qword_1ECB52BF8, sub_1D9AA3A74);
    sub_1D9C7E74C();
    v9 = (v3 + v57[12]);
    v10 = v9[1];
    v54[0] = *v9;
    v54[1] = v10;
    v11 = v9[3];
    v13 = *v9;
    v12 = v9[1];
    v54[2] = v9[2];
    v54[3] = v11;
    v50 = v13;
    v51 = v12;
    v14 = v9[3];
    v52 = v9[2];
    v53 = v14;
    v49 = 8;
    sub_1D99AB100(v54, v38, &qword_1ECB51B80);
    sub_1D9AA3AC8();
    sub_1D9C7E6DC();
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1D99A6AE0(v48, &qword_1ECB51B80);
    LOBYTE(v38[0]) = 9;
    sub_1D9C7E6CC();
    v15 = (v3 + v57[14]);
    v16 = v15[1];
    v46 = *v15;
    v47 = v16;
    v45 = 10;
    sub_1D99DF410(v46, v16);
    sub_1D99DF2FC();
    sub_1D9C7E6DC();
    sub_1D99B3C44(v46, v47);
    v17 = (v3 + v57[15]);
    v18 = v17[5];
    v19 = v17[3];
    v41 = v17[4];
    v42 = v18;
    v20 = v17[5];
    v43 = v17[6];
    v21 = v17[1];
    v38[0] = *v17;
    v38[1] = v21;
    v22 = v17[3];
    v24 = *v17;
    v23 = v17[1];
    v39 = v17[2];
    v40 = v22;
    v34 = v41;
    v35 = v20;
    v36 = v17[6];
    v30 = v24;
    v31 = v23;
    v44 = *(v17 + 28);
    v37 = *(v17 + 28);
    v32 = v39;
    v33 = v19;
    v29 = 11;
    sub_1D99CF644(v38, v27);
    sub_1D9AA3B1C();
    sub_1D9C7E74C();
    v27[4] = v34;
    v27[5] = v35;
    v27[6] = v36;
    v28 = v37;
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_1D99CF67C(v27);
    v26[15] = 12;
    sub_1D9C7E71C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ObjectKnowledge.hash(into:)(__int128 *a1)
{
  v3 = sub_1D9C7B80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  if (*(v1 + 8))
  {
    sub_1D9C7E8FC();
    sub_1D9C7DD6C();
  }

  else
  {
    sub_1D9C7E8FC();
  }

  sub_1D9C7DD6C();
  v12 = type metadata accessor for ObjectKnowledge();
  sub_1D99AB100(v1 + v12[6], v11, &qword_1ECB51FD0);
  v13 = *(v4 + 48);
  if (v13(v11, 1, v3) == 1)
  {
    v14 = v4;
    sub_1D9C7E8FC();
  }

  else
  {
    v15 = *(v4 + 32);
    v31 = v8;
    v16 = v32;
    v15(v32, v11, v3);
    sub_1D9C7E8FC();
    sub_1D9AA45E4(&qword_1ECB52C18, MEMORY[0x1E6968FB0]);
    sub_1D9C7DBDC();
    v14 = v4;
    v17 = v16;
    v8 = v31;
    (*(v4 + 8))(v17, v3);
  }

  sub_1D9C7E91C();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D99AB100(v1 + v12[10], v8, &qword_1ECB51FD0);
  if (v13(v8, 1, v3) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    v18 = v32;
    (*(v14 + 32))(v32, v8, v3);
    sub_1D9C7E8FC();
    sub_1D9AA45E4(&qword_1ECB52C18, MEMORY[0x1E6968FB0]);
    sub_1D9C7DBDC();
    (*(v14 + 8))(v18, v3);
  }

  sub_1D9A2F6DC(a1, *(v1 + v12[11]));
  v19 = (v1 + v12[12]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = *(v19 + 2);
    v43 = *(v19 + 1);
    v44 = v22;
    v45 = *(v19 + 3);
    v41 = v21;
    v42 = v20;
    sub_1D9C7E8FC();
    sub_1D99FDE2C();
  }

  else
  {
    sub_1D9C7E8FC();
  }

  v23 = (v1 + v12[13]);
  if (*(v23 + 8) == 1)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    v24 = *v23;
    sub_1D9C7E8FC();
    MEMORY[0x1DA73EAC0](v24);
  }

  if (*(v1 + v12[14] + 8) >> 60 == 15)
  {
    sub_1D9C7E8FC();
  }

  else
  {
    sub_1D9C7E8FC();
    sub_1D9C7B88C();
  }

  v25 = (v1 + v12[15]);
  v26 = v25[5];
  v37 = v25[4];
  v38 = v26;
  v39 = v25[6];
  v40 = *(v25 + 28);
  v27 = v25[1];
  v33 = *v25;
  v28 = v25[2];
  v29 = v25[3];
  v34 = v27;
  v35 = v28;
  v36 = v29;
  ObjectKnowledgeCSUCarrier.hash(into:)(a1);
  return sub_1D9C7E91C();
}

uint64_t ObjectKnowledge.hashValue.getter()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t ObjectKnowledge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v76 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52C20);
  v10 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = v76 - v11;
  v13 = type metadata accessor for ObjectKnowledge();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v15 + v16[12];
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v83 = v17;
  v84 = v15;
  v85 = v16;
  v18 = v15 + v16[14];
  v81 = a1;
  v82 = v18;
  *v18 = xmmword_1D9C8CD70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9AA3A20();
  v79 = v12;
  sub_1D9C7E95C();
  if (v2)
  {
    v86 = v2;
    v23 = v85;
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    v24 = 0;
    v25 = v84;
    goto LABEL_4;
  }

  v19 = v10;
  LOBYTE(v95) = 0;
  v20 = v79;
  v21 = v80;
  v22 = sub_1D9C7E5AC();
  v33 = v84;
  *v84 = v22;
  v33[1] = v34;
  LOBYTE(v95) = 1;
  v33[2] = sub_1D9C7E5FC();
  v33[3] = v35;
  v36 = sub_1D9C7B80C();
  LOBYTE(v95) = 2;
  v37 = sub_1D9AA45E4(&qword_1ECB52C28, MEMORY[0x1E6968FB0]);
  v77 = 0;
  sub_1D9C7E5EC();
  v86 = 0;
  v76[1] = v37;
  v76[2] = v36;
  v38 = v85;
  sub_1D9A59E80(v9, v33 + v85[6]);
  LOBYTE(v95) = 3;
  v39 = v86;
  sub_1D9C7E62C();
  if (v39)
  {
    v86 = v39;
    (*(v19 + 8))(v20, v21);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v25 = v33;
    v45 = v77;
    goto LABEL_9;
  }

  *(v33 + v38[7]) = v40;
  LOBYTE(v95) = 4;
  v47 = sub_1D9C7E5FC();
  v45 = v77;
  v48 = (v33 + v38[8]);
  *v48 = v47;
  v48[1] = v49;
  LOBYTE(v95) = 5;
  v50 = sub_1D9C7E5FC();
  v51 = (v33 + v38[9]);
  *v51 = v50;
  v51[1] = v52;
  LOBYTE(v95) = 6;
  sub_1D9C7E5EC();
  v86 = 0;
  sub_1D9A59E80(v6, v33 + v38[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52BF0);
  LOBYTE(v103) = 7;
  sub_1D9AA3B70(&qword_1ECB52C30, sub_1D9AA3BE8);
  v53 = v86;
  sub_1D9C7E65C();
  v86 = v53;
  if (v53)
  {
    (*(v19 + 8))(v20, v21);
    v44 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v25 = v84;
    goto LABEL_9;
  }

  v25 = v84;
  *(v84 + v38[11]) = v95;
  v94 = 8;
  sub_1D9AA3C3C();
  v54 = v86;
  sub_1D9C7E5EC();
  v86 = v54;
  if (v54)
  {
    (*(v19 + 8))(v20, v80);
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v81);

    if (!v45)
    {
    }

    v23 = v85;
    sub_1D99A6AE0(v25 + v85[6], &qword_1ECB51FD0);
    if (v41)
    {

      if (v42)
      {
LABEL_13:

        if ((v43 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    else if (v42)
    {
      goto LABEL_13;
    }

    if (!v43)
    {
LABEL_14:
      v46 = 0;
      v24 = 0;
      if (!v44)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1D99A6AE0(v25 + v23[10], &qword_1ECB51FD0);
    v46 = 0;
    v24 = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v89 = v103;
  v90 = v104;
  v91 = v105;
  v92 = v106;
  v55 = v83;
  v56 = *(v83 + 1);
  v93[0] = *v83;
  v93[1] = v56;
  v57 = *(v83 + 3);
  v93[2] = *(v83 + 2);
  v93[3] = v57;
  sub_1D99A6AE0(v93, &qword_1ECB51B80);
  v58 = v90;
  *v55 = v89;
  *(v55 + 1) = v58;
  v59 = v92;
  *(v55 + 2) = v91;
  *(v55 + 3) = v59;
  LOBYTE(v95) = 9;
  v60 = v86;
  v61 = sub_1D9C7E5CC();
  v86 = v60;
  if (v60 || (v63 = v84 + v85[13], *v63 = v61, v63[8] = v62 & 1, v88 = 10, sub_1D99DF350(), v64 = v86, sub_1D9C7E5EC(), (v86 = v64) != 0) || (v65 = v95, v66 = v82, sub_1D99B3C44(*v82, *(v82 + 1)), *v66 = v65, v88 = 11, sub_1D9AA3C90(), v67 = v86, sub_1D9C7E65C(), (v86 = v67) != 0))
  {
    (*(v19 + 8))(v79, v80);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    v46 = 0;
  }

  else
  {
    v68 = v84 + v85[15];
    v69 = v100;
    *(v68 + 4) = v99;
    *(v68 + 5) = v69;
    *(v68 + 6) = v101;
    *(v68 + 28) = v102;
    v70 = v96;
    *v68 = v95;
    *(v68 + 1) = v70;
    v71 = v98;
    *(v68 + 2) = v97;
    *(v68 + 3) = v71;
    v87 = 12;
    v72 = v86;
    sub_1D9C7E62C();
    v86 = v72;
    if (!v72)
    {
      v74 = v73;
      (*(v19 + 8))(v79, v80);
      v75 = v84;
      *(v84 + v85[16]) = v74;
      sub_1D9A702A8(v75, v78);
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      return sub_1D9A7030C(v75);
    }

    (*(v19 + 8))(v79, v80);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    v46 = 1;
  }

  v25 = v84;

  v23 = v85;
  sub_1D99A6AE0(v25 + v85[6], &qword_1ECB51FD0);

  sub_1D99A6AE0(v25 + v23[10], &qword_1ECB51FD0);
LABEL_19:

  v24 = v46;
LABEL_4:
  v26 = *(v83 + 1);
  v103 = *v83;
  v104 = v26;
  v27 = *(v83 + 3);
  v105 = *(v83 + 2);
  v106 = v27;
  sub_1D99A6AE0(&v103, &qword_1ECB51B80);
  result = sub_1D99B3C44(*v82, *(v82 + 1));
  if (v24)
  {
    v29 = v25 + v23[15];
    v30 = *(v29 + 5);
    v99 = *(v29 + 4);
    v100 = v30;
    v101 = *(v29 + 6);
    v102 = *(v29 + 28);
    v31 = *(v29 + 1);
    v95 = *v29;
    v96 = v31;
    v32 = *(v29 + 3);
    v97 = *(v29 + 2);
    v98 = v32;
    return sub_1D99CF67C(&v95);
  }

  return result;
}

uint64_t sub_1D9AA2EA0()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D9AA2EE4()
{
  sub_1D9C7E8DC();
  ObjectKnowledge.hash(into:)(v1);
  return sub_1D9C7E93C();
}

BOOL _s12VisualLookUp15ObjectKnowledgeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9C7B80C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v114 = &v107[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v107[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52C70);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v107[-v17];
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20 || (*a1 != *a2 || v19 != v20) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v109 = v15;
  v110 = v7;
  v21 = type metadata accessor for ObjectKnowledge();
  v115 = a2;
  v22 = *(v21 + 24);
  v23 = a1;
  v24 = *(v13 + 48);
  v111 = v21;
  v112 = v23;
  sub_1D99AB100(v23 + v22, v18, &qword_1ECB51FD0);
  v25 = v115 + v22;
  v26 = v115;
  sub_1D99AB100(v25, v18 + v24, &qword_1ECB51FD0);
  v113 = v5;
  v27 = *(v5 + 48);
  if (v27(v18, 1, v4) == 1)
  {
    if (v27(v18 + v24, 1, v4) == 1)
    {
      sub_1D99A6AE0(v18, &qword_1ECB51FD0);
      goto LABEL_20;
    }

LABEL_16:
    v28 = &qword_1ECB52C70;
    v29 = v18;
LABEL_17:
    sub_1D99A6AE0(v29, v28);
    return 0;
  }

  sub_1D99AB100(v18, v12, &qword_1ECB51FD0);
  if (v27(v18 + v24, 1, v4) == 1)
  {
    (*(v113 + 8))(v12, v4);
    goto LABEL_16;
  }

  v31 = v113;
  v32 = v110;
  (*(v113 + 32))(v110, v18 + v24, v4);
  sub_1D9AA45E4(&qword_1ECB52C80, MEMORY[0x1E6968FB0]);
  v108 = sub_1D9C7DC2C();
  v33 = *(v31 + 8);
  v33(v32, v4);
  v33(v12, v4);
  v26 = v115;
  sub_1D99A6AE0(v18, &qword_1ECB51FD0);
  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v35 = v111;
  v34 = v112;
  if (*(v112 + v111[7]) != *(v26 + v111[7]))
  {
    return 0;
  }

  v36 = v111[8];
  v37 = *(v112 + v36);
  v38 = *(v112 + v36 + 8);
  v39 = (v26 + v36);
  if ((v37 != *v39 || v38 != v39[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v40 = v35[9];
  v41 = *(v34 + v40);
  v42 = *(v34 + v40 + 8);
  v43 = (v26 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  v44 = v35[10];
  v45 = *(v13 + 48);
  v46 = v109;
  sub_1D99AB100(v34 + v44, v109, &qword_1ECB51FD0);
  v47 = v115 + v44;
  v48 = v115;
  sub_1D99AB100(v47, v46 + v45, &qword_1ECB51FD0);
  if (v27(v46, 1, v4) == 1)
  {
    if (v27((v46 + v45), 1, v4) == 1)
    {
      sub_1D99A6AE0(v46, &qword_1ECB51FD0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v49 = v114;
  sub_1D99AB100(v46, v114, &qword_1ECB51FD0);
  if (v27((v46 + v45), 1, v4) == 1)
  {
    (*(v113 + 8))(v49, v4);
    v46 = v109;
LABEL_32:
    v28 = &qword_1ECB52C70;
    v29 = v46;
    goto LABEL_17;
  }

  v50 = v113;
  v51 = v46 + v45;
  v52 = v46;
  v53 = v110;
  (*(v113 + 32))(v110, v51, v4);
  sub_1D9AA45E4(&qword_1ECB52C80, MEMORY[0x1E6968FB0]);
  v54 = sub_1D9C7DC2C();
  v55 = *(v50 + 8);
  v55(v53, v4);
  v55(v49, v4);
  sub_1D99A6AE0(v52, &qword_1ECB51FD0);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v56 = v112;
  if ((sub_1D9A290D8(*(v112 + v35[11]), *(v48 + v35[11])) & 1) == 0)
  {
    return 0;
  }

  v57 = (v56 + v35[12]);
  v58 = v57[1];
  v164[0] = *v57;
  v164[1] = v58;
  v59 = v57[1];
  v60 = v57[3];
  v165 = v57[2];
  v166 = v60;
  v61 = (v48 + v35[12]);
  v62 = v61[1];
  v167[0] = *v61;
  v167[1] = v62;
  v63 = v61[3];
  v167[2] = v61[2];
  v167[3] = v63;
  v64 = v164[0];
  v140 = v59;
  v141 = v165;
  v142 = v57[3];
  if (!*(&v164[0] + 1))
  {
    if (!*(&v167[0] + 1))
    {
      v156 = *&v164[0];
      v71 = v57[2];
      v157 = v57[1];
      v158 = v71;
      v159 = v57[3];
      sub_1D99AB100(v164, &v148, &qword_1ECB51B80);
      sub_1D99AB100(v167, &v148, &qword_1ECB51B80);
      sub_1D99A6AE0(&v156, &qword_1ECB51B80);
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (!*(&v167[0] + 1))
  {
LABEL_40:
    v156 = v164[0];
    v69 = v57[2];
    v157 = v57[1];
    v158 = v69;
    v159 = v57[3];
    v160 = v167[0];
    v70 = v61[2];
    v161 = v61[1];
    v162 = v70;
    v163 = v61[3];
    sub_1D99AB100(v164, &v148, &qword_1ECB51B80);
    sub_1D99AB100(v167, &v148, &qword_1ECB51B80);
    v28 = &unk_1ECB52C78;
    v29 = &v156;
    goto LABEL_17;
  }

  v148 = v167[0];
  v65 = v61[2];
  v149 = v61[1];
  v150 = v65;
  v151 = v61[3];
  v169[1] = v149;
  v169[2] = v65;
  v169[3] = v151;
  v66 = v57[1];
  v67 = v57[2];
  v168[3] = v57[3];
  v169[0] = v167[0];
  v168[1] = v66;
  v168[2] = v67;
  v168[0] = v164[0];
  sub_1D99AB100(v164, &v156, &qword_1ECB51B80);
  sub_1D99AB100(v167, &v156, &qword_1ECB51B80);
  v68 = sub_1D99FE618(v168, v169);
  sub_1D99A6AE0(&v148, &qword_1ECB51B80);
  v156 = v64;
  v157 = v140;
  v158 = v141;
  v159 = v142;
  sub_1D99A6AE0(&v156, &qword_1ECB51B80);
  if (!v68)
  {
    return 0;
  }

LABEL_42:
  v72 = v35[13];
  v73 = (v112 + v72);
  v74 = *(v112 + v72 + 8);
  v75 = (v115 + v72);
  v76 = *(v115 + v72 + 8);
  if (v74)
  {
    if (v76)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (*v73 != *v75)
  {
    LOBYTE(v76) = 1;
  }

  if (v76)
  {
    return 0;
  }

LABEL_48:
  v77 = v35[14];
  v78 = v112 + v77;
  v80 = *(v112 + v77);
  v79 = *(v112 + v77 + 8);
  v81 = (v115 + v77);
  v83 = *v81;
  v82 = v81[1];
  if (v79 >> 60 == 15)
  {
    if (v82 >> 60 == 15)
    {
      sub_1D99DF410(*v78, *(v78 + 8));
      sub_1D99DF410(v83, v82);
      sub_1D99B3C44(v80, v79);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v82 >> 60 == 15)
  {
LABEL_52:
    sub_1D99DF410(*v78, *(v78 + 8));
    sub_1D99DF410(v83, v82);
    sub_1D99B3C44(v80, v79);
    sub_1D99B3C44(v83, v82);
    return 0;
  }

  sub_1D99DF410(*v78, *(v78 + 8));
  sub_1D99DF410(v83, v82);
  v84 = sub_1D99FBD74(v80, v79, v83, v82);
  sub_1D99B3C44(v83, v82);
  sub_1D99B3C44(v80, v79);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_54:
  v85 = v112;
  v86 = (v112 + v35[15]);
  v87 = v86[5];
  v88 = v86[3];
  v136 = v86[4];
  v137 = v87;
  v89 = v86[5];
  v138 = v86[6];
  v139 = *(v86 + 28);
  v90 = v86[1];
  v133[0] = *v86;
  v133[1] = v90;
  v91 = v86[3];
  v93 = *v86;
  v92 = v86[1];
  v134 = v86[2];
  v135 = v91;
  v129 = v136;
  v130 = v89;
  v131 = v86[6];
  v132 = *(v86 + 28);
  v125 = v93;
  v126 = v92;
  v127 = v134;
  v128 = v88;
  v94 = v115;
  v95 = v115 + v35[15];
  v96 = *(v95 + 5);
  v97 = *(v95 + 3);
  v144 = *(v95 + 4);
  v145 = v96;
  v98 = *(v95 + 5);
  v146 = *(v95 + 6);
  v99 = *v95;
  v100 = *(v95 + 1);
  v101 = *(v95 + 3);
  v142 = *(v95 + 2);
  v143 = v101;
  v102 = *(v95 + 1);
  v103 = *(v95 + 2);
  v104 = *v95;
  v140 = v99;
  v141 = v102;
  v105 = *(v95 + 6);
  v122 = v98;
  v123 = v105;
  v117 = v104;
  v147 = *(v95 + 28);
  v124 = *(v95 + 28);
  v118 = v100;
  v119 = v103;
  v120 = v97;
  v121 = v144;
  sub_1D99CF644(v133, v116);
  sub_1D99CF644(&v140, v116);
  v106 = _s12VisualLookUp25ObjectKnowledgeCSUCarrierV2eeoiySbAC_ACtFZ_0(&v125, &v117);
  v152 = v121;
  v153 = v122;
  v154 = v123;
  v148 = v117;
  v149 = v118;
  v155 = v124;
  v150 = v119;
  v151 = v120;
  sub_1D99CF67C(&v148);
  v160 = v129;
  v161 = v130;
  v162 = v131;
  LODWORD(v163) = v132;
  v156 = v125;
  v157 = v126;
  v158 = v127;
  v159 = v128;
  sub_1D99CF67C(&v156);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

  return *(v85 + v35[16]) == *(v94 + v35[16]);
}

unint64_t sub_1D9AA3A20()
{
  result = qword_1ECB52BE0;
  if (!qword_1ECB52BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52BE0);
  }

  return result;
}

unint64_t sub_1D9AA3A74()
{
  result = qword_1ECB52C00;
  if (!qword_1ECB52C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C00);
  }

  return result;
}

unint64_t sub_1D9AA3AC8()
{
  result = qword_1ECB52C08;
  if (!qword_1ECB52C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C08);
  }

  return result;
}

unint64_t sub_1D9AA3B1C()
{
  result = qword_1ECB52C10;
  if (!qword_1ECB52C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C10);
  }

  return result;
}

uint64_t sub_1D9AA3B70(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB52BF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9AA3BE8()
{
  result = qword_1ECB52C38;
  if (!qword_1ECB52C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C38);
  }

  return result;
}

unint64_t sub_1D9AA3C3C()
{
  result = qword_1ECB52C40;
  if (!qword_1ECB52C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C40);
  }

  return result;
}

unint64_t sub_1D9AA3C90()
{
  result = qword_1ECB52C48;
  if (!qword_1ECB52C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C48);
  }

  return result;
}

void sub_1D9AA3D54()
{
  sub_1D9AA3F1C(319, &qword_1EDD2C5E0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9A587D8();
    if (v1 <= 0x3F)
    {
      sub_1D9AA3F1C(319, &qword_1EDD2A778, &type metadata for ObjectKnowledge.Property, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9AA3F1C(319, qword_1EDD2B998, &type metadata for ThirdPartyObject, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D9AA3F1C(319, &qword_1EDD2A6F8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D9AA3F1C(319, &qword_1EDD2C318, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D9AA3F1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ObjectKnowledge.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectKnowledge.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9AA40C0()
{
  result = qword_1ECB52C58;
  if (!qword_1ECB52C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52C58);
  }

  return result;
}