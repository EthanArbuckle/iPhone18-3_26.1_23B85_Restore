uint64_t sub_1B4EC3010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F65B84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F63A0, &qword_1B4F78E40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40E0, &unk_1B4F78950);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40E0, &unk_1B4F78950);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F63A8, MEMORY[0x1E69CB618]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40E0, &unk_1B4F78950);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E0, &unk_1B4F78950, MEMORY[0x1E69CB618], MEMORY[0x1E69CB610], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F63A0, &qword_1B4F78E40);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40E0, &unk_1B4F78950, MEMORY[0x1E69CB618], MEMORY[0x1E69CB610], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40E0, &unk_1B4F78950);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC3398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F64AA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6390, &qword_1B4F78E38);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40D8, &qword_1B4F6A600);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40D8, &qword_1B4F6A600);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6398, MEMORY[0x1E69CAF50]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40D8, &qword_1B4F6A600);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D8, &qword_1B4F6A600, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF48], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6390, &qword_1B4F78E38);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D8, &qword_1B4F6A600, MEMORY[0x1E69CAF50], MEMORY[0x1E69CAF48], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40D8, &qword_1B4F6A600);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC3720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66454();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40D0, &unk_1B4F78940);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40D0, &unk_1B4F78940);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F5668, MEMORY[0x1E69CC1F8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D0, &unk_1B4F78940, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC1E0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F55B0, &qword_1B4F78E30);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40D0, &unk_1B4F78940, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC1E0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40D0, &unk_1B4F78940);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC3AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F65DB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6380, &qword_1B4F78E28);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40C8, &qword_1B4F6A5F8);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6388, MEMORY[0x1E69CB7B8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40C8, &qword_1B4F6A5F8);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C8, &qword_1B4F6A5F8, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7A0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6380, &qword_1B4F78E28);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C8, &qword_1B4F6A5F8, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7A0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC3E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6370, &qword_1B4F78E20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40C0, &unk_1B4F78930);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40C0, &unk_1B4F78930);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6378, MEMORY[0x1E69CCBA8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40C0, &unk_1B4F78930);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C0, &unk_1B4F78930, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBA0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6370, &qword_1B4F78E20);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40C0, &unk_1B4F78930, MEMORY[0x1E69CCBA8], MEMORY[0x1E69CCBA0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40C0, &unk_1B4F78930);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F64B04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6360, &qword_1B4F78E18);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40B8, &qword_1B4F6A5F0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6368, MEMORY[0x1E69CAFB8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40B8, &qword_1B4F6A5F0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B8, &qword_1B4F6A5F0, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFB0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6360, &qword_1B4F78E18);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B8, &qword_1B4F6A5F0, MEMORY[0x1E69CAFB8], MEMORY[0x1E69CAFB0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC4540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F65894();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6350, &qword_1B4F78E10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40A0, &qword_1B4F6A5E0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6358, MEMORY[0x1E69CB468]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40A0, &qword_1B4F6A5E0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40A0, &qword_1B4F6A5E0, MEMORY[0x1E69CB468], MEMORY[0x1E69CB460], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6350, &qword_1B4F78E10);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40A0, &qword_1B4F6A5E0, MEMORY[0x1E69CB468], MEMORY[0x1E69CB460], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC48C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F67A34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6340, &qword_1B4F78E08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F40B0, &unk_1B4F78920);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F40B0, &unk_1B4F78920);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6348, MEMORY[0x1E69CD338]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F40B0, &unk_1B4F78920);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B0, &unk_1B4F78920, MEMORY[0x1E69CD338], MEMORY[0x1E69CD328], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6340, &qword_1B4F78E08);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F40B0, &unk_1B4F78920, MEMORY[0x1E69CD338], MEMORY[0x1E69CD328], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F40B0, &unk_1B4F78920);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC4C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66914();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6330, &qword_1B4F78E00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4090, &qword_1B4F6A5D8);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4090, &qword_1B4F6A5D8);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6338, MEMORY[0x1E69CC7A0]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4090, &qword_1B4F6A5D8);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4090, &qword_1B4F6A5D8, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC798], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6330, &qword_1B4F78E00);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4090, &qword_1B4F6A5D8, MEMORY[0x1E69CC7A0], MEMORY[0x1E69CC798], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4090, &qword_1B4F6A5D8);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC4FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F64E44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6320, &qword_1B4F78DF8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4088, &qword_1B4F6A5D0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4088, &qword_1B4F6A5D0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6328, MEMORY[0x1E69CB0B8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4088, &qword_1B4F6A5D0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4088, &qword_1B4F6A5D0, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0B0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6320, &qword_1B4F78DF8);
    return sub_1B4EBE5E8(a1, a2, &qword_1EB8F4088, &qword_1B4F6A5D0, MEMORY[0x1E69CB0B8], MEMORY[0x1E69CB0B0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4088, &qword_1B4F6A5D0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC5360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F65C34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6310, &qword_1B4F78DF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4080, &unk_1B4F788F0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4080, &unk_1B4F788F0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6318, MEMORY[0x1E69CB680]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4080, &unk_1B4F788F0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4080, &unk_1B4F788F0, MEMORY[0x1E69CB680], MEMORY[0x1E69CB678], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6310, &qword_1B4F78DF0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4080, &unk_1B4F788F0, MEMORY[0x1E69CB680], MEMORY[0x1E69CB678], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4080, &unk_1B4F788F0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC56E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66084();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6300, &qword_1B4F78DE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4078, &qword_1B4F6A5C8);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4078, &qword_1B4F6A5C8);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F6308, MEMORY[0x1E69CBE00]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4078, &qword_1B4F6A5C8);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4078, &qword_1B4F6A5C8, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBDF8], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F6300, &qword_1B4F78DE8);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4078, &qword_1B4F6A5C8, MEMORY[0x1E69CBE00], MEMORY[0x1E69CBDF8], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4078, &qword_1B4F6A5C8);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC5A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66964();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62F0, &qword_1B4F78DE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4060, &unk_1B4F788D0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4060, &unk_1B4F788D0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F62F8, MEMORY[0x1E69CC7D8]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4060, &unk_1B4F788D0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4060, &unk_1B4F788D0, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7D0], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F62F0, &qword_1B4F78DE0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4060, &unk_1B4F788D0, MEMORY[0x1E69CC7D8], MEMORY[0x1E69CC7D0], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4060, &unk_1B4F788D0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC5DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F66AC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62E0, &qword_1B4F78DD8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4070, &unk_1B4F788E0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4070, &unk_1B4F788E0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F62E8, MEMORY[0x1E69CC9D0]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4070, &unk_1B4F788E0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4070, &unk_1B4F788E0, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9C8], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F62E0, &qword_1B4F78DD8);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4070, &unk_1B4F788E0, MEMORY[0x1E69CC9D0], MEMORY[0x1E69CC9C8], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4070, &unk_1B4F788E0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC6180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1B4F679A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F62D0, &qword_1B4F78DD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v27 - v19;
  v22 = *(v21 + 56);
  sub_1B4E21A90(a2, &v27 - v19, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4E21A90(a1, &v20[v22], &qword_1EB8F4068, &qword_1B4F6A5C0);
  v23 = *(v6 + 48);
  if (v23(v20, 1, v5) != 1)
  {
    sub_1B4E21A90(v20, v15, &qword_1EB8F4068, &qword_1B4F6A5C0);
    if (v23(&v20[v22], 1, v5) != 1)
    {
      (*(v6 + 32))(v10, &v20[v22], v5);
      sub_1B4EC6508(&qword_1EB8F62D8, MEMORY[0x1E69CD2A0]);
      v25 = sub_1B4F67F54();
      v26 = *(v6 + 8);
      v26(v10, v5);
      v26(v15, v5);
      sub_1B4DD2BC4(v20, &qword_1EB8F4068, &qword_1B4F6A5C0);
      if (v25)
      {
        return (*(v6 + 56))(v28, 1, 1, v5);
      }

      return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4068, &qword_1B4F6A5C0, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD298], v28);
    }

    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1B4DD2BC4(v20, &qword_1EB8F62D0, &qword_1B4F78DD0);
    return sub_1B4EBE2D4(a1, a2, &qword_1EB8F4068, &qword_1B4F6A5C0, MEMORY[0x1E69CD2A0], MEMORY[0x1E69CD298], v28);
  }

  if (v23(&v20[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4DD2BC4(v20, &qword_1EB8F4068, &qword_1B4F6A5C0);
  return (*(v6 + 56))(v28, 1, 1, v5);
}

uint64_t sub_1B4EC6508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4EC6550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t SourceLocation.description.getter()
{
  v1 = v0[1];
  v6 = sub_1B4EC67C8(*v0);
  MEMORY[0x1B8C818C0](58, 0xE100000000000000);
  v5 = v0[2];
  v2 = sub_1B4F68D04();
  MEMORY[0x1B8C818C0](v2);

  MEMORY[0x1B8C818C0](32, 0xE100000000000000);
  v3 = sub_1B4EC6870(v0[3], v0[4]);
  MEMORY[0x1B8C818C0](v3);

  return v6;
}

uint64_t sub_1B4EC6714()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v8 = sub_1B4EC67C8(*v0);
  MEMORY[0x1B8C818C0](58, 0xE100000000000000);
  v5 = sub_1B4F68D04();
  MEMORY[0x1B8C818C0](v5);

  MEMORY[0x1B8C818C0](32, 0xE100000000000000);
  v6 = sub_1B4EC6870(v2, v4);
  MEMORY[0x1B8C818C0](v6);

  return v8;
}

uint64_t sub_1B4EC67C8(uint64_t a1)
{
  sub_1B4DCAC7C();
  v2 = (sub_1B4F68844() + 16);
  if (*v2)
  {
    v3 = &v2[2 * *v2];
    a1 = *v3;
    v4 = v3[1];
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1B4EC6870(uint64_t a1, unint64_t a2)
{
  sub_1B4DCACD0(40, 0xE100000000000000, a1, a2);
  v2 = sub_1B4F680B4();
  v3 = MEMORY[0x1B8C81870](v2);

  return v3;
}

uint64_t static MetricsDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v3);
  return sub_1B4F66A44();
}

uint64_t PlaybackIntent.applyingTimestampOffset(_:)()
{
  sub_1B4F65874();

  return sub_1B4F65884();
}

uint64_t sub_1B4EC6A40()
{
  sub_1B4F65874();

  return sub_1B4F65884();
}

uint64_t WorkoutPlanCompleted.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F649A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutPlanCompleted.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WorkoutPlanCompleted()
{
  result = qword_1EDB6EB68;
  if (!qword_1EDB6EB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EC6BEC()
{
  result = sub_1B4F649A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4EC6C58()
{
  result = sub_1B4EC6C78();
  qword_1EDB700E8 = result;
  return result;
}

uint64_t sub_1B4EC6C78()
{
  v0 = MEMORY[0x1B8C7E5F0]();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v2++;
      v6 = v7;
      v8 = v7 >> 6;
      if (v7 >> 6)
      {
        if (v8 != 1 || (sub_1B4F66214() & 1) != 0)
        {
LABEL_12:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B4E25914(0, *(v3 + 16) + 1, 1);
          }

          v5 = *(v3 + 16);
          v4 = *(v3 + 24);
          if (v5 >= v4 >> 1)
          {
            sub_1B4E25914((v4 > 1), v5 + 1, 1);
          }

          *(v3 + 16) = v5 + 1;
          *(v3 + v5 + 32) = v6;
        }
      }

      else if (sub_1B4F66544())
      {
        goto LABEL_12;
      }

      if (!--v1)
      {
        goto LABEL_15;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v9 = sub_1B4DF2C48(v3);

  return v9;
}

uint64_t MetricTopic.isAnonymous.getter(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return sub_1B4F66544();
  }

  if (a1 >> 6 == 1)
  {
    return sub_1B4F66214();
  }

  return 1;
}

uint64_t static MetricTopic.anonymousTopics.getter()
{
  if (qword_1EDB700E0 != -1)
  {
    swift_once();
  }
}

uint64_t MetricTopic.supportsDemographicEvent.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE361C0]();
  }
}

uint64_t MetricTopic.supportsOptInConsentField.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361D0]();
  }
}

uint64_t MetricTopic.supportsSubscriptionFields.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361D8]();
  }
}

uint64_t MetricTopic.supportsIsSubscribedField.getter(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    return a1 >> 6 == 1;
  }

  else
  {
    return MEMORY[0x1EEE361C8]();
  }
}

uint64_t MetricTopic.supportsPurchaseEventAdditionalDetails.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE361E8]();
  }
}

uint64_t MetricTopic.supportsGroupActivityFields.getter(unsigned __int8 a1)
{
  if (a1 > 0x3Fu)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x1EEE361E0]();
  }
}

unint64_t sub_1B4EC6EBC()
{
  result = qword_1EDB71F70;
  if (!qword_1EDB71F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71F70);
  }

  return result;
}

void *RemoteKeyDeliveryClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *RemoteKeyDeliveryClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t RemoteKeyDeliveryClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteKeyDeliveryClient.fetchCertificateContext()@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v118 - 8);
  v2 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v118, v3);
  v103 = v4;
  v104 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v117 = v92 - v7;
  v116 = sub_1B4F64964();
  v108 = *(v116 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v116, v9);
  v107 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = v92 - v13;
  v101 = sub_1B4F67BD4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1B4F67BA4();
  v17 = *(v97 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v97, v19);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4560, &qword_1B4F6CE10);
  v106 = *(v115 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v115, v23);
  v114 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v102 = v92 - v27;
  v98 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v92 - v31;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer();
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  v36 = *(v1 + 16);
  v35 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v121[0] = 147;
  v38 = *(v35 + 24);
  v113 = sub_1B4F664D4();
  v112 = v32;
  v38(v121, v113, MEMORY[0x1E69CC2F0], MEMORY[0x1E69CC2F8], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v39 + 24) = 48;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchCertificateContext", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v111 = v40;

  sub_1B4F67BC4();
  v44 = v21;
  sub_1B4F67B84();
  v45 = v100;
  v46 = *(v100 + 16);
  v47 = v99;
  v48 = v101;
  v46(v99, v34, v101);
  v49 = type metadata accessor for Signpost();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v53 + 8) = 48;
  *(v53 + 16) = 2;
  v54 = v21;
  v55 = v97;
  (*(v17 + 16))(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v54, v97);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v46((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v45 + 8))(v47, v48);
  (*(v17 + 8))(v44, v55);
  *(v56 + 16) = 0;
  v93 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v57 = v111;
  v120 = v111;
  v58 = sub_1B4F67F94();
  v101 = v58;
  v60 = v59;
  sub_1B4F64944();
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  *(v61 + 24) = v52;
  *(v61 + 32) = v58;
  *(v61 + 40) = v60;
  v100 = v60;
  *(v61 + 48) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v61 + 56) = 48;
  *(v61 + 64) = 2;

  v62 = v117;
  sub_1B4F675F4();
  v63 = v106;
  v64 = *(v106 + 16);
  v97 = v106 + 16;
  v99 = v64;
  v66 = v114;
  v65 = v115;
  (v64)(v114, v112, v115);
  v96 = *(v63 + 80);
  v94 = &v98[(v96 + 16) & ~v96];
  v67 = (v96 + 16) & ~v96;
  v95 = v67;
  v68 = swift_allocObject();
  v69 = *(v63 + 32);
  v92[1] = v63 + 32;
  v98 = v69;
  (v69)(v68 + v67, v66, v65);
  v70 = v110;
  v71 = v104;
  v72 = v118;
  (*(v110 + 16))(v104, v62, v118);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v103 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v70 + 32))(v75 + v73, v71, v72);
  v76 = (v75 + v74);
  *v76 = sub_1B4ECBD5C;
  v76[1] = v68;
  v77 = v102;
  sub_1B4F675F4();
  v79 = v107;
  v78 = v108;
  v80 = v116;
  (*(v108 + 16))(v107, v119, v116);
  v81 = (*(v78 + 80) + 49) & ~*(v78 + 80);
  v82 = (v105 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v100;
  *(v83 + 16) = v101;
  *(v83 + 24) = v84;
  *(v83 + 32) = "RemoteKeyDeliveryClient::fetchCertificateContext";
  *(v83 + 40) = 48;
  *(v83 + 48) = 2;
  (*(v78 + 32))(v83 + v81, v79, v80);
  *(v83 + v82) = v93;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
  v86 = v114;
  v85 = v115;
  (v99)(v114, v77, v115);
  v87 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (v98)(v88 + v95, v86, v85);
  v89 = (v88 + v87);
  *v89 = sub_1B4ECBD98;
  v89[1] = v83;

  sub_1B4F675F4();
  v90 = *(v63 + 8);
  v90(v77, v85);
  (*(v70 + 8))(v117, v118);
  (*(v78 + 8))(v119, v116);
  v90(v112, v85);
}

uint64_t RemoteKeyDeliveryClient.fetchContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F66504();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EDB6DE50);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 148;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F64A74();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteKeyDeliveryClient::fetchContext";
  *(v45 + 24) = 37;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchContext", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteKeyDeliveryClient::fetchContext";
  *(v58 + 8) = 37;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteKeyDeliveryClient::fetchContext";
  *(v66 + 56) = 37;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4ECBDD8;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteKeyDeliveryClient::fetchContext";
  *(v88 + 40) = 37;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4ECBE14;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteKeyDeliveryClient.fetchStreamingKeyNonce(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v113 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v114 = *(v121 - 8);
  v7 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v121, v8);
  v107 = v9;
  v108 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = v96 - v12;
  v119 = sub_1B4F64964();
  v112 = *(v119 - 8);
  v13 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v119, v14);
  v111 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v122 = v96 - v18;
  v103 = sub_1B4F67BD4();
  v19 = *(v103 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v103, v21);
  v23 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1B4F67BA4();
  v24 = *(v104 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v104, v26);
  v28 = v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v110 = *(v118 - 8);
  v29 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v118, v30);
  v117 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v105 = v35;
  v106 = v96 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v96 - v38;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for ActivityTracer();
  v41 = __swift_project_value_buffer(v40, qword_1EDB6DE50);
  v42 = *(v3 + 16);
  v43 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 151;
  v123[0] = a1;
  v123[1] = a2;
  (*(v43 + 32))(v124, v123, MEMORY[0x1E69E6158], MEMORY[0x1E6969080], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CAE40], MEMORY[0x1E69CAE48], ObjectType, v43);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v45 + 24) = 47;
  *(v45 + 32) = 2;
  v46 = v45;
  v47 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v48 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::fetchStreamingKeyNonce", v47, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v49 = swift_allocObject();
  *(v49 + 44) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = 0;
  *(v46 + 40) = v49;
  v115 = v46;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v39;
  v50 = v28;
  v51 = v19;
  v52 = *(v19 + 16);
  v53 = v103;
  v52(v23, v41, v103);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v58 + 8) = 47;
  *(v58 + 16) = 2;
  v59 = v104;
  (*(v24 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v50, v104);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v52((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v23, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  (*(v51 + 8))(v23, v53);
  (*(v24 + 8))(v50, v59);
  *(v60 + 16) = 0;
  v97 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v60;
  v61 = v115;
  v123[0] = v115;
  v62 = sub_1B4F67F94();
  v104 = v62;
  v64 = v63;
  sub_1B4F64944();
  v65 = swift_allocObject();
  *(v65 + 16) = v61;
  *(v65 + 24) = v57;
  *(v65 + 32) = v62;
  *(v65 + 40) = v64;
  v103 = v64;
  *(v65 + 48) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v65 + 56) = 47;
  *(v65 + 64) = 2;

  v66 = v120;
  sub_1B4F675F4();
  v67 = v110;
  v68 = *(v110 + 16);
  v101 = v110 + 16;
  v102 = v68;
  v69 = v117;
  v70 = v118;
  v68(v117, v116, v118);
  v100 = *(v67 + 80);
  v98 = &v105[(v100 + 16) & ~v100];
  v71 = (v100 + 16) & ~v100;
  v99 = v71;
  v72 = swift_allocObject();
  v73 = *(v67 + 32);
  v96[1] = v67 + 32;
  v105 = v73;
  (v73)(v72 + v71, v69, v70);
  v74 = v114;
  v75 = v108;
  v76 = v121;
  (*(v114 + 16))(v108, v66, v121);
  v77 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v78 = (v107 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  (*(v74 + 32))(v79 + v77, v75, v76);
  v80 = (v79 + v78);
  *v80 = sub_1B4ECBE54;
  v80[1] = v72;
  v81 = v106;
  sub_1B4F675F4();
  v83 = v111;
  v82 = v112;
  v84 = v119;
  (*(v112 + 16))(v111, v122, v119);
  v85 = (*(v82 + 80) + 49) & ~*(v82 + 80);
  v86 = (v109 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = v103;
  *(v87 + 16) = v104;
  *(v87 + 24) = v88;
  *(v87 + 32) = "RemoteKeyDeliveryClient::fetchStreamingKeyNonce";
  *(v87 + 40) = 47;
  *(v87 + 48) = 2;
  (*(v82 + 32))(v87 + v85, v83, v84);
  *(v87 + v86) = v97;
  *(v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v90 = v117;
  v89 = v118;
  v102(v117, v81, v118);
  v91 = (v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  (v105)(v92 + v99, v90, v89);
  v93 = (v92 + v91);
  *v93 = sub_1B4ECBE90;
  v93[1] = v87;

  sub_1B4F675F4();
  v94 = *(v67 + 8);
  v94(v81, v89);
  (*(v74 + 8))(v120, v121);
  (*(v82 + 8))(v122, v119);
  v94(v116, v89);
}

uint64_t RemoteKeyDeliveryClient.renewContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F66504();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EDB6DE50);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 149;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F64A74();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], MEMORY[0x1E69CAF38], MEMORY[0x1E69CAF40], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "RemoteKeyDeliveryClient::renewContext";
  *(v45 + 24) = 37;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::renewContext", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "RemoteKeyDeliveryClient::renewContext";
  *(v58 + 8) = 37;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "RemoteKeyDeliveryClient::renewContext";
  *(v66 + 56) = 37;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4ECC33C;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteKeyDeliveryClient::renewContext";
  *(v88 + 40) = 37;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4ECC334;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteKeyDeliveryClient.releaseContext(spc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v120 = sub_1B4F64964();
  v114 = *(v120 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v120, v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = &v96 - v9;
  v10 = sub_1B4F67BD4();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B4F67BA4();
  v100 = *(v101 - 1);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v119 = *(v111 - 8);
  v18 = v119[8];
  MEMORY[0x1EEE9AC00](v111, v19);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v118 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v121 = &v96 - v29;
  v102 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v96 - v33;
  v35 = sub_1B4F66504();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for ActivityTracer();
  v42 = __swift_project_value_buffer(v41, qword_1EDB6DE50);
  v43 = *(v36 + 16);
  v108 = v40;
  v43(v40, a1, v35);
  v109 = v36;
  v44 = *(v2 + 16);
  v45 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v124[0] = 150;
  (*(v45 + 16))(v124, v40, v35, MEMORY[0x1E69CC380], MEMORY[0x1E69CC388], ObjectType, v45);
  type metadata accessor for ActivityTrace();
  v47 = swift_allocObject();
  *(v47 + 16) = "RemoteKeyDeliveryClient::releaseContext";
  *(v47 + 24) = 39;
  *(v47 + 32) = 2;
  v48 = v47;
  v49 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v50 = _os_activity_create(&dword_1B4DC2000, "RemoteKeyDeliveryClient::releaseContext", v49, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v51 = swift_allocObject();
  *(v51 + 44) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 16) = v50;
  *(v51 + 40) = 0;
  *(v48 + 40) = v51;
  v115 = v48;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v116 = v34;
  v52 = v105;
  v103 = v35;
  v53 = *(v105 + 16);
  v54 = v104;
  v55 = v106;
  v53(v104, v42, v106);
  v56 = type metadata accessor for Signpost();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  v60 = v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v60 = "RemoteKeyDeliveryClient::releaseContext";
  *(v60 + 8) = 39;
  *(v60 + 16) = 2;
  v61 = v100;
  v62 = v101;
  (*(v100 + 16))(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v17, v101);
  v63 = v59;
  *(v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v53((v59 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v52 + 8))(v54, v55);
  (*(v61 + 8))(v17, v62);
  *(v64 + 16) = 0;
  v99 = v63;
  *(v63 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v115;
  v123 = v115;
  v66 = sub_1B4F67F94();
  v106 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v63;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v105 = v68;
  *(v69 + 48) = "RemoteKeyDeliveryClient::releaseContext";
  *(v69 + 56) = 39;
  *(v69 + 64) = 2;

  sub_1B4F675F4();
  v70 = v119;
  v71 = (v119 + 2);
  v72 = v119[2];
  v73 = v117;
  v74 = v111;
  v72(v117, v116, v111);
  v101 = v72;
  v104 = v71;
  v97 = *(v70 + 80);
  v75 = (v97 + 16) & ~v97;
  v76 = v102 + v75;
  v77 = swift_allocObject();
  v78 = v70[4];
  v100 = v75;
  v78(v77 + v75, v73, v74);
  v102 = v70 + 4;
  v98 = v78;
  v79 = v107;
  v72(v107, v121, v74);
  v80 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v78(v81 + v75, v79, v74);
  v82 = (v81 + v80);
  *v82 = sub_1B4ECBF74;
  v82[1] = v77;
  sub_1B4F675F4();
  v83 = v114;
  v84 = v112;
  v85 = v120;
  (*(v114 + 16))(v112, v122, v120);
  v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
  v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "RemoteKeyDeliveryClient::releaseContext";
  *(v88 + 40) = 39;
  *(v88 + 48) = 2;
  (*(v83 + 32))(v88 + v86, v84, v85);
  *(v88 + v87) = v99;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v91 = v117;
  v90 = v118;
  (v101)(v117, v118, v74);
  v92 = swift_allocObject();
  v98(v92 + v100, v91, v74);
  v93 = (v92 + v80);
  *v93 = sub_1B4ECC000;
  v93[1] = v88;

  sub_1B4F675F4();
  v94 = v119[1];
  v94(v90, v74);
  v94(v121, v74);
  (*(v83 + 8))(v122, v120);
  v94(v116, v74);
  (*(v109 + 8))(v108, v103);
}

uint64_t RemoteKeyDeliveryClient.fetchPlaybackVoucher(version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v118 = *(v126 - 8);
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v126, v5);
  v111 = v6;
  v112 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v125 = &v97 - v9;
  v124 = sub_1B4F64964();
  v116 = *(v124 - 8);
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v124, v11);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v127 = &v97 - v15;
  v106 = sub_1B4F67BD4();
  v105 = *(v106 - 8);
  v16 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106, v17);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B4F67BA4();
  v101 = *(v103 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v103, v20);
  v100 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v114 = *(v123 - 8);
  v22 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v123, v23);
  v122 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v110 = &v97 - v27;
  v102 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = sub_1B4F66644();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for ActivityTracer();
  v40 = __swift_project_value_buffer(v39, qword_1EDB6DE50);
  (*(v34 + 16))(v38, a1, v33);
  v42 = *(v2 + 16);
  v41 = *(v2 + 24);
  v108 = v33;
  ObjectType = swift_getObjectType();
  v129 = 232;
  v107 = v38;
  v109 = v34;
  v44 = *(v41 + 32);
  v120 = sub_1B4F65B94();
  v121 = v32;
  v44(&v129, v38, v33, v120, MEMORY[0x1E69CC598], MEMORY[0x1E69CC5A0], MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v41);
  type metadata accessor for ActivityTrace();
  v45 = swift_allocObject();
  *(v45 + 16) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v45 + 24) = 48;
  *(v45 + 32) = 2;
  v46 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v47 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::fetchPlaybackVoucher", v46, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v48 = swift_allocObject();
  *(v48 + 44) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = 0;
  *(v45 + 40) = v48;
  v119 = v45;

  sub_1B4F67BC4();
  v49 = v100;
  sub_1B4F67B84();
  v50 = v105;
  v51 = *(v105 + 16);
  v52 = v104;
  v53 = v106;
  v51(v104, v40, v106);
  v54 = type metadata accessor for Signpost();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v58 = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v58 + 8) = 48;
  *(v58 + 16) = 2;
  v59 = v101;
  v60 = v103;
  (*(v101 + 16))(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v49, v103);
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v51((v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  (*(v50 + 8))(v52, v53);
  (*(v59 + 8))(v49, v60);
  *(v61 + 16) = 0;
  v98 = v57;
  *(v57 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v61;
  v62 = v119;
  v128 = v119;
  v63 = sub_1B4F67F94();
  v106 = v63;
  v65 = v64;
  sub_1B4F64944();
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  *(v66 + 24) = v57;
  *(v66 + 32) = v63;
  *(v66 + 40) = v65;
  v105 = v65;
  *(v66 + 48) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v66 + 56) = 48;
  *(v66 + 64) = 2;

  v67 = v125;
  sub_1B4F675F4();
  v68 = v114;
  v69 = *(v114 + 16);
  v103 = v114 + 16;
  v104 = v69;
  v70 = v122;
  v71 = v123;
  (v69)(v122, v121, v123);
  v101 = *(v68 + 80);
  v99 = &v102[(v101 + 16) & ~v101];
  v72 = (v101 + 16) & ~v101;
  v100 = v72;
  v73 = swift_allocObject();
  v74 = *(v68 + 32);
  v97 = v68 + 32;
  v102 = v74;
  (v74)(v73 + v72, v70, v71);
  v75 = v118;
  v76 = v112;
  v77 = v126;
  (*(v118 + 16))(v112, v67, v126);
  v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v79 = (v111 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v75 + 32))(v80 + v78, v76, v77);
  v81 = (v80 + v79);
  *v81 = sub_1B4ECC0DC;
  v81[1] = v73;
  v82 = v110;
  sub_1B4F675F4();
  v83 = v115;
  v84 = v116;
  v85 = v124;
  (*(v116 + 16))(v115, v127, v124);
  v86 = (*(v84 + 80) + 49) & ~*(v84 + 80);
  v87 = (v113 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v105;
  *(v88 + 16) = v106;
  *(v88 + 24) = v89;
  *(v88 + 32) = "StreamingKeyDeliveryClient::fetchPlaybackVoucher";
  *(v88 + 40) = 48;
  *(v88 + 48) = 2;
  (*(v84 + 32))(v88 + v86, v83, v85);
  *(v88 + v87) = v98;
  *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
  v91 = v122;
  v90 = v123;
  (v104)(v122, v82, v123);
  v92 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v102)(&v100[v93], v91, v90);
  v94 = (v93 + v92);
  *v94 = sub_1B4ECC118;
  v94[1] = v88;

  sub_1B4F675F4();
  v95 = *(v68 + 8);
  v95(v82, v90);
  (*(v75 + 8))(v125, v126);
  (*(v84 + 8))(v127, v124);
  v95(v121, v90);
  (*(v109 + 8))(v107, v108);
}

uint64_t RemoteKeyDeliveryClient.queryPlaybackVoucher()@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v118 - 8);
  v2 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v118, v3);
  v103 = v4;
  v104 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v117 = v92 - v7;
  v116 = sub_1B4F64964();
  v108 = *(v116 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v116, v9);
  v107 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v119 = v92 - v13;
  v101 = sub_1B4F67BD4();
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101, v15);
  v99 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1B4F67BA4();
  v17 = *(v97 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v97, v19);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v106 = *(v115 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v115, v23);
  v114 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v102 = v92 - v27;
  v98 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v92 - v31;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer();
  v34 = __swift_project_value_buffer(v33, qword_1EDB6DE50);
  v36 = *(v1 + 16);
  v35 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v121[0] = 231;
  v38 = *(v35 + 24);
  v113 = sub_1B4F65B94();
  v112 = v32;
  v38(v121, v113, MEMORY[0x1E69CB648], MEMORY[0x1E69CB650], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v39 + 24) = 48;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "StreamingKeyDeliveryClient::queryPlaybackVoucher", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v111 = v40;

  sub_1B4F67BC4();
  v44 = v21;
  sub_1B4F67B84();
  v45 = v100;
  v46 = *(v100 + 16);
  v47 = v99;
  v48 = v101;
  v46(v99, v34, v101);
  v49 = type metadata accessor for Signpost();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v53 + 8) = 48;
  *(v53 + 16) = 2;
  v54 = v21;
  v55 = v97;
  (*(v17 + 16))(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v54, v97);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v46((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v45 + 8))(v47, v48);
  (*(v17 + 8))(v44, v55);
  *(v56 + 16) = 0;
  v93 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v57 = v111;
  v120 = v111;
  v58 = sub_1B4F67F94();
  v101 = v58;
  v60 = v59;
  sub_1B4F64944();
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  *(v61 + 24) = v52;
  *(v61 + 32) = v58;
  *(v61 + 40) = v60;
  v100 = v60;
  *(v61 + 48) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v61 + 56) = 48;
  *(v61 + 64) = 2;

  v62 = v117;
  sub_1B4F675F4();
  v63 = v106;
  v64 = *(v106 + 16);
  v97 = v106 + 16;
  v99 = v64;
  v66 = v114;
  v65 = v115;
  (v64)(v114, v112, v115);
  v96 = *(v63 + 80);
  v94 = &v98[(v96 + 16) & ~v96];
  v67 = (v96 + 16) & ~v96;
  v95 = v67;
  v68 = swift_allocObject();
  v69 = *(v63 + 32);
  v92[1] = v63 + 32;
  v98 = v69;
  (v69)(v68 + v67, v66, v65);
  v70 = v110;
  v71 = v104;
  v72 = v118;
  (*(v110 + 16))(v104, v62, v118);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v103 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v70 + 32))(v75 + v73, v71, v72);
  v76 = (v75 + v74);
  *v76 = sub_1B4ECC348;
  v76[1] = v68;
  v77 = v102;
  sub_1B4F675F4();
  v79 = v107;
  v78 = v108;
  v80 = v116;
  (*(v108 + 16))(v107, v119, v116);
  v81 = (*(v78 + 80) + 49) & ~*(v78 + 80);
  v82 = (v105 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v100;
  *(v83 + 16) = v101;
  *(v83 + 24) = v84;
  *(v83 + 32) = "StreamingKeyDeliveryClient::queryPlaybackVoucher";
  *(v83 + 40) = 48;
  *(v83 + 48) = 2;
  (*(v78 + 32))(v83 + v81, v79, v80);
  *(v83 + v82) = v93;
  *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
  v86 = v114;
  v85 = v115;
  (v99)(v114, v77, v115);
  v87 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (v98)(v88 + v95, v86, v85);
  v89 = (v88 + v87);
  *v89 = sub_1B4ECC338;
  v89[1] = v83;

  sub_1B4F675F4();
  v90 = *(v63 + 8);
  v90(v77, v85);
  (*(v70 + 8))(v117, v118);
  (*(v78 + 8))(v119, v116);
  v90(v112, v85);
}

uint64_t sub_1B4ECBCEC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

void sub_1B4ECBE90(uint64_t a1)
{
  v3 = *(sub_1B4F64964() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4E1D07C(*a1, *(a1 + 8), *(a1 + 16), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECBF74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B4E20A40(v4, a1);
}

void sub_1B4ECC000(uint64_t a1)
{
  v3 = *(sub_1B4F64964() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4E209F0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECC158(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4ECC21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_1B4ECC54C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F66634();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4ECC590()
{
  sub_1B4DE3280();
  sub_1B4DC53AC();
  return sub_1B4F68134();
}

void HealthStore.birthday.getter()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v8[0] = 0;
  v2 = [v1 dateOfBirthComponentsWithError_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    sub_1B4F64794();
    v5 = v3;
  }

  else
  {
    v6 = v8[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
}

id HealthStore.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  a1[4] = &type metadata for ActivityRingsQueryProvider;
  a1[5] = &protocol witness table for ActivityRingsQueryProvider;
  *a1 = result;
  return result;
}

uint64_t HealthStore.init(healthStore:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[4] = &type metadata for ActivityRingsQueryProvider;
  a2[5] = &protocol witness table for ActivityRingsQueryProvider;
  *a2 = result;
  return result;
}

uint64_t HealthStore.init(activityRingsQueryProvider:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  *a2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];

  return sub_1B4DC933C(a1, (a2 + 1));
}

SEL *HealthStore.biologicalSex.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B4ECC850(&selRef_biologicalSexWithError_, &selRef_biologicalSex);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

SEL *HealthStore.wheelchairUse.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B4ECC850(&selRef_wheelchairUseWithError_, &selRef_wheelchairUse);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

SEL *sub_1B4ECC850(SEL *a1, SEL *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v11[0] = 0;
  v5 = [v4 *a1];
  if (v5)
  {
    v6 = v5;
    v7 = v11[0];
    a2 = [v6 *a2];
  }

  else
  {
    v8 = v11[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return a2;
}

id HealthStore.bodyMass.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B4ECC9C8(&selRef__bodyMassCharacteristicQuantityWithError_);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id HealthStore.height.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B4ECC9C8(&selRef__heightCharacteristicQuantityWithError_);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B4ECC9C8(SEL *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v8[0] = 0;
  v3 = [v2 *a1];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t HealthStore.betaBlockerUse.getter()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v9[0] = 0;
  v2 = [v1 _cardioFitnessMedicationsUseWithError_];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    v5 = v9[0];
    v3 = [v4 takingBetaBlockers];
  }

  else
  {
    v6 = v9[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

uint64_t HealthStore.moveMode.getter()
{
  v12[1] = *MEMORY[0x1E69E9840];
  sub_1B4DF6AB4(23, 0, 0);
  v2 = v1;

  if (!v2 || (v3 = sub_1B4F65C74(), v3 == 2))
  {
    v4 = *v0;
    v12[0] = 0;
    v5 = [v4 activityMoveModeWithError_];
    if (!v5)
    {
      v10 = v12[0];
      sub_1B4F647C4();

      result = swift_willThrow();
      goto LABEL_7;
    }

    v6 = v5;
    v7 = v12[0];
    v8 = [v6 activityMoveMode];

    v3 = sub_1B4E639AC(v8);
  }

  result = v3 & 1;
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id HealthStore.fitnessMode.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return (sub_1B4E63A84(v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthStore.save(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECCDA8, 0, 0);
}

{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECD384, 0, 0);
}

uint64_t sub_1B4ECCDA8()
{
  v8 = **(v0 + 152);
  if (*(v0 + 144) >> 62)
  {
    sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);

    sub_1B4F68B34();
  }

  else
  {

    sub_1B4F68D64();
    sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);
    v1 = *(v0 + 144);
  }

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  sub_1B4DD8804(0, &qword_1EB8F6460, 0x1E696C2D0);
  v5 = sub_1B4F681B4();
  *(v0 + 184) = v5;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B4ECD01C;
  swift_continuation_init();
  *(v0 + 136) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B4ECD214;
  *(v0 + 104) = &block_descriptor_8;
  [v8 saveObjects:v5 withCompletion:v0 + 80];
  (*(v3 + 8))(boxed_opaque_existential_1, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B4ECD01C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B4ECD198;
  }

  else
  {
    v3 = sub_1B4ECD12C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4ECD12C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4ECD198()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

void sub_1B4ECD214(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682B4();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    sub_1B4F682A4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B4ECD384()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v11 = v1[18];
  v8 = *v1[19];
  v1[2] = v2;
  v1[3] = sub_1B4ECD540;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4ECD214;
  v1[13] = &block_descriptor_4;
  [v8 saveObject:v11 withCompletion:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B4ECD540()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1B4ECD6B4;
  }

  else
  {
    v3 = sub_1B4ECD650;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4ECD650()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4ECD6B4()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t HealthStore.save(_:to:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4ECD7F8, 0, 0);
}

uint64_t sub_1B4ECD7F8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v1[18];
  v11 = *v1[20];
  v12 = v1[19];
  sub_1B4DD8804(0, &unk_1EDB6DA48, 0x1E696C3A8);
  v8 = sub_1B4F681B4();
  v1[24] = v8;
  v1[2] = v1;
  v1[3] = sub_1B4ECD9E4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68294();
  (*(v4 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B4ECD214;
  v1[13] = &block_descriptor_8;
  [v11 addSamples:v8 toWorkout:v12 completion:v3];
  (*(v4 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B4ECD9E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1B4ECDB60;
  }

  else
  {
    v3 = sub_1B4ECDAF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4ECDAF4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4ECDB60()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t HealthStore.queryStatistics(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDC28, 0, 0);
}

uint64_t sub_1B4ECDC28()
{
  v1 = **(v0 + 32);
  v2 = *(MEMORY[0x1E696B3D8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1B4ECDCC8;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEDC76A8](v1);
}

uint64_t sub_1B4ECDCC8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4ECDDFC, 0, 0);
  }
}

uint64_t sub_1B4ECDDFC()
{
  v1 = v0[6];
  if (v1)
  {
    sub_1B4E6E7B0(v1, v0[2]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[2];
  v4 = sub_1B4F66204();
  (*(*(v4 - 8) + 56))(v3, v2, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t HealthStore.querySamples<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDEDC, 0, 0);
}

uint64_t sub_1B4ECDEDC()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 32);
  v3 = *(MEMORY[0x1E696B3C8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = sub_1B4F67E74();
  *v4 = v0;
  v4[1] = sub_1B4ECDF98;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEDC7698](v2, v5);
}

uint64_t sub_1B4ECDF98(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

NSObject *HealthStore.makeWorkoutSession(session:)@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v6 = sub_1B4F678C4();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1, v9);
  v16[3] = &type metadata for HealthStore;
  v16[4] = &protocol witness table for HealthStore;
  v16[5] = &protocol witness table for HealthStore;
  v16[6] = &protocol witness table for HealthStore;
  v16[7] = &protocol witness table for HealthStore;
  v16[0] = swift_allocObject();
  sub_1B4ECE950(v2, v16[0] + 16);
  v13 = type metadata accessor for HealthWorkoutSession();
  v14 = objc_allocWithZone(v13);
  result = HealthWorkoutSession.init(session:healthStore:)(v11, v16);
  if (!v3)
  {
    a2[3] = v13;
    a2[4] = &protocol witness table for HealthWorkoutSession;
    *a2 = result;
  }

  return result;
}

HKWorkoutSession __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HealthStore.makeWorkoutSession(configuration:)(HKWorkoutConfiguration configuration)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C5D0]);
  v12[0] = 0;
  v5 = v3;
  v6 = configuration.super.isa;
  v7 = [v4 initWithHealthStore:v5 configuration:v6 error:v12];
  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

HKLiveWorkoutDataSource __swiftcall HealthStore.makeWorkoutDataSource(configuration:)(HKWorkoutConfiguration configuration)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C220]);

  return [v4 initWithHealthStore:v3 workoutConfiguration:configuration.super.isa];
}

id sub_1B4ECE3F4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return (sub_1B4E63A84(v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4ECE494(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4ECDC28, 0, 0);
}

uint64_t sub_1B4ECE4B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDED70;

  return HealthStore.querySamples<A>(_:)(a1, a2);
}

uint64_t sub_1B4ECE55C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthStore.save(_:)(a1);
}

uint64_t sub_1B4ECE5F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return HealthStore.save(_:)(a1);
}

uint64_t sub_1B4ECE684(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE13F0;

  return HealthStore.save(_:to:)(a1, a2);
}

NSObject *sub_1B4ECE728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v10 = sub_1B4F678C4();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, v13);
  v20[3] = a2;
  v20[4] = &protocol witness table for HealthStore;
  v20[5] = &protocol witness table for HealthStore;
  v20[6] = &protocol witness table for HealthStore;
  v20[7] = a3;
  v20[0] = swift_allocObject();
  sub_1B4ECE950(v4, v20[0] + 16);
  v17 = type metadata accessor for HealthWorkoutSession();
  v18 = objc_allocWithZone(v17);
  result = HealthWorkoutSession.init(session:healthStore:)(v15, v20);
  if (!v5)
  {
    a4[3] = v17;
    a4[4] = &protocol witness table for HealthWorkoutSession;
    *a4 = result;
  }

  return result;
}

id sub_1B4ECE888(void *a1)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C5D0]);
  v5 = v3;
  v6 = a1;
  v7 = sub_1B4ECE988(v5, v6);

  return v7;
}

id sub_1B4ECE900(uint64_t a1)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696C220]);

  return [v4 initWithHealthStore:v3 workoutConfiguration:a1];
}

id sub_1B4ECE988(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v3 = [v2 initWithHealthStore:a1 configuration:a2 error:v8];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1B4F647C4();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t type metadata accessor for MultiUserActivityCancelled()
{
  result = qword_1EB8F6478;
  if (!qword_1EB8F6478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ECEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return SessionMonitor.sessionUpdated(_:state:)(a1, a2, a3, a4);
}

uint64_t SessionMonitor.sessionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_1B4F66964();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_1B4F65184();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v16 = sub_1B4F67A34();
  v5[16] = v16;
  v17 = *(v16 - 8);
  v5[17] = v17;
  v18 = *(v17 + 64) + 15;
  v5[18] = swift_task_alloc();
  v19 = *(*(a4 + 8) + 8);
  v21 = sub_1B4F68274();
  v5[19] = v21;
  v5[20] = v20;

  return MEMORY[0x1EEE6DFA0](sub_1B4ECEE18, v21, v20);
}

uint64_t sub_1B4ECEE18()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[2];
  sub_1B4F654E4();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v41 = v0[5];
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v21 = *(v41 + 88);
    v38 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[21] = v23;
    *v23 = v0;
    v23[1] = sub_1B4ECF2E0;
    v24 = v0[5];
    v25 = v0[6];
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[18];
    v29 = v38;

    return v29(v28, v26, v27, v24);
  }

  sub_1B4DD2BC4(v0[15], &qword_1EB8F40B0, &unk_1B4F78920);
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[2];
  sub_1B4F65384();
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v42 = v0[5];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v30 = *(v42 + 96);
    v39 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[23] = v32;
    *v32 = v0;
    v32[1] = sub_1B4ECF79C;
    v24 = v0[5];
    v33 = v0[6];
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[14];
    v29 = v39;

    return v29(v28, v26, v27, v24);
  }

  sub_1B4DD2BC4(v0[11], &qword_1EB8F7050, &qword_1B4F71500);
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[7];
  v12 = v0[2];
  sub_1B4F654A4();
  if ((*(v10 + 48))(v11, 1, v9) != 1)
  {
    v43 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v34 = *(v43 + 104);
    v40 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    v0[25] = v36;
    *v36 = v0;
    v36[1] = sub_1B4ECFAF8;
    v24 = v0[5];
    v37 = v0[6];
    v26 = v0[3];
    v27 = v0[4];
    v28 = v0[10];
    v29 = v40;

    return v29(v28, v26, v27, v24);
  }

  sub_1B4DD2BC4(v0[7], &qword_1EB8F4060, &unk_1B4F788D0);
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[15];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B4ECF2E0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_1B4ECFCF4;
  }

  else
  {
    v7 = sub_1B4ECF41C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ECF41C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[2];
  sub_1B4F65384();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v32 = v0[5];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v17 = *(v32 + 96);
    v30 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[23] = v19;
    *v19 = v0;
    v19[1] = sub_1B4ECF79C;
    v20 = v0[5];
    v21 = v0[6];
    v22 = v0[3];
    v23 = v0[4];
    v24 = v0[14];
    v25 = v30;

    return v25(v24, v22, v23, v20);
  }

  sub_1B4DD2BC4(v0[11], &qword_1EB8F7050, &qword_1B4F71500);
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[2];
  sub_1B4F654A4();
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v33 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v26 = *(v33 + 104);
    v31 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[25] = v28;
    *v28 = v0;
    v28[1] = sub_1B4ECFAF8;
    v20 = v0[5];
    v29 = v0[6];
    v22 = v0[3];
    v23 = v0[4];
    v24 = v0[10];
    v25 = v31;

    return v25(v24, v22, v23, v20);
  }

  sub_1B4DD2BC4(v0[7], &qword_1EB8F4060, &unk_1B4F788D0);
  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B4ECF79C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_1B4ECFF5C;
  }

  else
  {
    v7 = sub_1B4ECF8D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ECF8D8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_1B4F654A4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v0[7], &qword_1EB8F4060, &unk_1B4F788D0);
    v5 = v0[18];
    v6 = v0[14];
    v7 = v0[15];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[7];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v22 = v0[5];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v13 = *(v22 + 104);
    v21 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_1B4ECFAF8;
    v16 = v0[10];
    v17 = v0[5];
    v18 = v0[6];
    v19 = v0[3];
    v20 = v0[4];

    return v21(v16, v19, v20, v17);
  }
}

uint64_t sub_1B4ECFAF8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_1B4ED01C4;
  }

  else
  {
    v7 = sub_1B4ECFC34;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ECFC34()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4ECFCF4()
{
  v28 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136315394;
    v11 = sub_1B4F68F84();
    v13 = sub_1B4DC4F88(v11, v12, &v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update playback with %@", v8, 0x16u);
    sub_1B4DD2BC4(v9, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v8, -1, -1);
  }

  v16 = v0[22];
  v18 = v0[17];
  v17 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  v23 = v0[10];
  v22 = v0[11];
  v26 = v0[7];
  swift_willThrow();
  (*(v18 + 8))(v17, v19);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B4ECFF5C()
{
  v28 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136315394;
    v11 = sub_1B4F68F84();
    v13 = sub_1B4DC4F88(v11, v12, &v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update activity rings with %@", v8, 0x16u);
    sub_1B4DD2BC4(v9, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v8, -1, -1);
  }

  v16 = v0[24];
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[18];
  v20 = v0[14];
  v21 = v0[15];
  v23 = v0[10];
  v22 = v0[11];
  v26 = v0[7];
  swift_willThrow();
  (*(v18 + 8))(v20, v17);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B4ED01C4()
{
  v28 = v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3 = v1;
  v4 = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136315394;
    v11 = sub_1B4F68F84();
    v13 = sub_1B4DC4F88(v11, v12, &v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_1B4DC2000, v4, v5, "[%s] Failed to update workout device connection with %@", v8, 0x16u);
    sub_1B4DD2BC4(v9, &unk_1EB8F6DF0, &qword_1B4F79210);
    MEMORY[0x1B8C831D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v8, -1, -1);
  }

  v16 = v0[26];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[18];
  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[11];
  v23 = v0[8];
  v26 = v0[7];
  swift_willThrow();
  (*(v18 + 8))(v17, v23);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1B4ED0444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SessionMonitor.handleSessionActivated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionActivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 8);
  v4[6] = v5;
  v6 = *(v5 + 8);
  v8 = sub_1B4F68274();
  v4[7] = v8;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0578, v8, v7);
}

uint64_t sub_1B4ED0578()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E699F0C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B4ED0660;
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0660()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1B4E4E61C;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1B4E4E614;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B4ED077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return SessionMonitor.handleSessionDeactivated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionDeactivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 8);
  v4[6] = v5;
  v6 = *(v5 + 8);
  v8 = sub_1B4F68274();
  v4[7] = v8;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED08B0, v8, v7);
}

uint64_t sub_1B4ED08B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E699F0C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B4ED0998;
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0998()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1B4E4D8A8;
  }

  else
  {
    v7 = v2[9];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1B4DEDE88;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B4ED0AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return SessionMonitor.handleSessionUpdated(_:)(a1, a2, a3);
}

uint64_t SessionMonitor.handleSessionUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 8);
  v4[6] = v5;
  v6 = *(v5 + 8);
  v8 = sub_1B4F68274();
  v4[7] = v8;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0BE8, v8, v7);
}

uint64_t sub_1B4ED0BE8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E699F0C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B4ED0660;
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);

  return MEMORY[0x1EEE08090]();
}

uint64_t sub_1B4ED0CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v10 = sub_1B4F678C4();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v13 = type metadata accessor for SessionMonitorState();
  v5[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v15 = *(*(a5 + 8) + 8);
  v17 = sub_1B4F68274();
  v5[19] = v17;
  v5[20] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED0EB4, v17, v16);
}

uint64_t sub_1B4ED0EB4()
{
  v111 = v0;
  v1 = v0[16];
  v2 = v0[2];
  v3 = v0[18];
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v0[11] + 32))(v0[15], v0[18], v0[10]);
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v39 = v0[14];
    v40 = v0[15];
    v41 = v0[13];
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[3];
    v45 = sub_1B4F67C54();
    __swift_project_value_buffer(v45, qword_1EDB6DF00);
    v46 = *(v43 + 16);
    v46(v39, v40, v42);
    v46(v41, v44, v42);
    v47 = sub_1B4F67C34();
    v48 = sub_1B4F685C4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[14];
    v51 = v0[15];
    v52 = v0[13];
    v53 = v0[10];
    v54 = v0[11];
    if (v49)
    {
      v55 = v0[4];
      v56 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v110 = v108;
      *v56 = 136315650;
      v57 = sub_1B4F68F84();
      v104 = v48;
      v59 = sub_1B4DC4F88(v57, v58, &v110);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      v60 = sub_1B4F676B4();
      v62 = v61;
      v63 = *(v54 + 8);
      v63(v50, v53);
      v64 = sub_1B4DC4F88(v60, v62, &v110);

      *(v56 + 14) = v64;
      *(v56 + 22) = 2080;
      v65 = sub_1B4F676B4();
      v67 = v66;
      v63(v52, v53);
      v68 = sub_1B4DC4F88(v65, v67, &v110);

      *(v56 + 24) = v68;
      _os_log_impl(&dword_1B4DC2000, v47, v104, "[%s] Currently waiting for session: %s. Unexpected new session: %s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v108, -1, -1);
      MEMORY[0x1B8C831D0](v56, -1, -1);

      v63(v51, v53);
    }

    else
    {

      v78 = *(v54 + 8);
      v78(v52, v53);
      v78(v50, v53);
      v78(v51, v53);
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[7] + 32))(v0[9], v0[18], v0[6]);
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];
    v12 = v0[3];
    v13 = sub_1B4F67C54();
    __swift_project_value_buffer(v13, qword_1EDB6DF00);
    (*(v10 + 16))(v9, v8, v11);
    (*(v6 + 16))(v5, v12, v7);
    v14 = sub_1B4F67C34();
    v15 = sub_1B4F685C4();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[9];
    v20 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    if (v16)
    {
      v101 = v0[5];
      v103 = v0[12];
      v24 = v0[4];
      v107 = v0[9];
      v25 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v110 = v105;
      *v25 = 136315650;
      v26 = sub_1B4F68F84();
      v102 = v15;
      v28 = sub_1B4DC4F88(v26, v27, &v110);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = (*(AssociatedConformanceWitness + 8))(v23, AssociatedConformanceWitness);
      v31 = *(v22 + 8);
      v31(v21, v23);
      v32 = *(v30 + 16);
      v33 = *(v30 + 24);

      v34 = sub_1B4DC4F88(v32, v33, &v110);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2080;
      v35 = sub_1B4F676B4();
      v37 = v36;
      (*(v18 + 8))(v103, v20);
      v38 = sub_1B4DC4F88(v35, v37, &v110);

      *(v25 + 24) = v38;
      _os_log_impl(&dword_1B4DC2000, v14, v102, "[%s] Currently active session: %s. Unexpected new session: %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v105, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);

      v31(v107, v23);
    }

    else
    {

      (*(v18 + 8))(v17, v20);
      v77 = *(v22 + 8);
      v77(v21, v23);
      v77(v19, v23);
    }

LABEL_22:
    v93 = v0[17];
    v92 = v0[18];
    v95 = v0[14];
    v94 = v0[15];
    v97 = v0[12];
    v96 = v0[13];
    v99 = v0[8];
    v98 = v0[9];

    v100 = v0[1];

    return v100();
  }

  v69 = v0[2];
  if (((*(v0[5] + 56))(v0[3], v0[4]) & 1) == 0)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v79 = sub_1B4F67C54();
    __swift_project_value_buffer(v79, qword_1EDB6DF00);
    v80 = sub_1B4F67C34();
    v81 = sub_1B4F685E4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v0[4];
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v110 = v84;
      *v83 = 136315138;
      v85 = sub_1B4F68F84();
      v87 = sub_1B4DC4F88(v85, v86, &v110);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_1B4DC2000, v80, v81, "[%s] Waiting for session update before starting", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1B8C831D0](v84, -1, -1);
      MEMORY[0x1B8C831D0](v83, -1, -1);
    }

    v88 = v0[17];
    v90 = v0[4];
    v89 = v0[5];
    v91 = v0[2];
    (*(v0[11] + 16))(v88, v0[3], v0[10]);
    swift_storeEnumTagMultiPayload();
    (*(v89 + 40))(v88, v90, v89);
    goto LABEL_22;
  }

  v106 = (v0[5] + 64);
  v109 = (*v106 + **v106);
  v70 = (*v106)[1];
  v71 = swift_task_alloc();
  v0[21] = v71;
  *v71 = v0;
  v71[1] = sub_1B4ED17DC;
  v72 = v0[4];
  v73 = v0[5];
  v75 = v0[2];
  v74 = v0[3];

  return v109(v74, v72, v73);
}

uint64_t sub_1B4ED17DC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_1B4ED19D8;
  }

  else
  {
    v7 = sub_1B4ED1918;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ED1918()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B4ED19D8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];
  v10 = v0[22];

  return v9();
}

uint64_t sub_1B4ED1A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v10 = sub_1B4F678C4();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = sub_1B4F65504();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v16 = type metadata accessor for SessionMonitorState();
  v5[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v18 = *(*(a5 + 8) + 8);
  v20 = sub_1B4F68274();
  v5[23] = v20;
  v5[24] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED1CE4, v20, v19);
}

uint64_t sub_1B4ED1CE4()
{
  v164 = v0;
  v1 = v0[20];
  v2 = v0[2];
  v3 = v0[22];
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (qword_1EDB6DEF8 != -1)
      {
        swift_once();
      }

      v86 = v0[19];
      v87 = v0[15];
      v88 = v0[16];
      v89 = v0[3];
      v90 = sub_1B4F67C54();
      __swift_project_value_buffer(v90, qword_1EDB6DF00);
      (*(v88 + 16))(v86, v89, v87);
      v91 = sub_1B4F67C34();
      v92 = sub_1B4F685C4();
      v93 = os_log_type_enabled(v91, v92);
      v94 = v0[19];
      v95 = v0[15];
      v96 = v0[16];
      if (v93)
      {
        v97 = v0[4];
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v163 = v99;
        *v98 = 136315394;
        v100 = sub_1B4F68F84();
        v102 = sub_1B4DC4F88(v100, v101, &v163);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        v103 = sub_1B4F65444();
        v105 = v104;
        (*(v96 + 8))(v94, v95);
        v106 = sub_1B4DC4F88(v103, v105, &v163);

        *(v98 + 14) = v106;
        _os_log_impl(&dword_1B4DC2000, v91, v92, "[%s] Can't update session that doesn't exist: %s", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v99, -1, -1);
        MEMORY[0x1B8C831D0](v98, -1, -1);
      }

      else
      {

        (*(v96 + 8))(v94, v95);
      }

      goto LABEL_38;
    }

    v5 = v0[6];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    (*(v0[7] + 32))(v0[9], v0[22], v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 8);
    v11 = v10(v5, AssociatedConformanceWitness);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);

    if (v13 == sub_1B4F65444() && v12 == v14)
    {
    }

    else
    {
      v16 = sub_1B4F68D54();

      if ((v16 & 1) == 0)
      {
        v151 = v10;
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v18 = v0[16];
        v17 = v0[17];
        v19 = v0[15];
        v153 = v0[8];
        v158 = v0[9];
        v21 = v0[6];
        v20 = v0[7];
        v22 = v0[3];
        v23 = sub_1B4F67C54();
        __swift_project_value_buffer(v23, qword_1EDB6DF00);
        (*(v18 + 16))(v17, v22, v19);
        (*(v20 + 16))(v153, v158, v21);
        v24 = sub_1B4F67C34();
        v154 = sub_1B4F685C4();
        v25 = os_log_type_enabled(v24, v154);
        v27 = v0[16];
        v26 = v0[17];
        v159 = v0[15];
        v28 = v0[8];
        v29 = v0[9];
        v31 = v0[6];
        v30 = v0[7];
        if (v25)
        {
          v146 = v0[6];
          v32 = v0[4];
          log = v24;
          v33 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v163 = v149;
          *v33 = 136315650;
          v34 = sub_1B4F68F84();
          v148 = v29;
          v36 = sub_1B4DC4F88(v34, v35, &v163);

          *(v33 + 4) = v36;
          *(v33 + 12) = 2080;
          v37 = sub_1B4F65444();
          v39 = v38;
          (*(v27 + 8))(v26, v159);
          v40 = sub_1B4DC4F88(v37, v39, &v163);

          *(v33 + 14) = v40;
          *(v33 + 22) = 2080;
          v41 = v151(v146, AssociatedConformanceWitness);
          v42 = *(v30 + 8);
          v42(v28, v146);
          v43 = *(v41 + 16);
          v44 = *(v41 + 24);

          v45 = sub_1B4DC4F88(v43, v44, &v163);

          *(v33 + 24) = v45;
          _os_log_impl(&dword_1B4DC2000, log, v154, "[%s] Can't update session %s while active for session %s", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v149, -1, -1);
          MEMORY[0x1B8C831D0](v33, -1, -1);

          v42(v148, v146);
        }

        else
        {

          v133 = *(v30 + 8);
          v133(v28, v31);
          (*(v27 + 8))(v26, v159);
          v133(v29, v31);
        }

        goto LABEL_38;
      }
    }

    v156 = (v0[5] + 72);
    v161 = (*v156 + **v156);
    v107 = (*v156)[1];
    v108 = swift_task_alloc();
    v0[27] = v108;
    *v108 = v0;
    v108[1] = sub_1B4ED2B9C;
    v109 = v0[9];
    v110 = v0[4];
    v111 = v0[5];
    v113 = v0[2];
    v112 = v0[3];

    return v161(v112, v109, v110, v111);
  }

  else
  {
    v46 = v0[3];
    (*(v0[11] + 32))(v0[14], v0[22], v0[10]);
    v47 = sub_1B4F65444();
    v49 = v48;
    if (v47 == sub_1B4F676B4() && v49 == v50)
    {
    }

    else
    {
      v52 = sub_1B4F68D54();

      if ((v52 & 1) == 0)
      {
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v53 = v0[18];
        v54 = v0[15];
        v55 = v0[16];
        v56 = v0[14];
        v58 = v0[11];
        v57 = v0[12];
        v59 = v0[10];
        v60 = v0[3];
        v61 = sub_1B4F67C54();
        __swift_project_value_buffer(v61, qword_1EDB6DF00);
        (*(v55 + 16))(v53, v60, v54);
        (*(v58 + 16))(v57, v56, v59);
        v62 = sub_1B4F67C34();
        v63 = sub_1B4F685C4();
        v64 = os_log_type_enabled(v62, v63);
        v65 = v0[18];
        v67 = v0[15];
        v66 = v0[16];
        v68 = v0[14];
        v69 = v0[11];
        v70 = v0[12];
        v71 = v0[10];
        if (v64)
        {
          v155 = v63;
          v72 = v0[4];
          v160 = v0[14];
          v73 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v163 = v152;
          *v73 = 136315650;
          v74 = sub_1B4F68F84();
          v150 = v71;
          v76 = sub_1B4DC4F88(v74, v75, &v163);

          *(v73 + 4) = v76;
          *(v73 + 12) = 2080;
          v77 = sub_1B4F65444();
          v79 = v78;
          (*(v66 + 8))(v65, v67);
          v80 = sub_1B4DC4F88(v77, v79, &v163);

          *(v73 + 14) = v80;
          *(v73 + 22) = 2080;
          v81 = sub_1B4F676B4();
          v83 = v82;
          v84 = *(v69 + 8);
          v84(v70, v150);
          v85 = sub_1B4DC4F88(v81, v83, &v163);

          *(v73 + 24) = v85;
          _os_log_impl(&dword_1B4DC2000, v62, v155, "[%s] Can't update session %s while waiting for session %s", v73, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v152, -1, -1);
          MEMORY[0x1B8C831D0](v73, -1, -1);

          v84(v160, v150);
        }

        else
        {

          v134 = *(v69 + 8);
          v134(v70, v71);
          (*(v66 + 8))(v65, v67);
          v134(v68, v71);
        }

        goto LABEL_38;
      }
    }

    v115 = v0[20];
    v116 = v0[21];
    v117 = v0[13];
    v118 = v0[10];
    v119 = v0[11];
    v121 = v0[4];
    v120 = v0[5];
    v123 = v0[2];
    v122 = v0[3];
    static Session.+ infix(_:_:)(v117);
    (*(v119 + 16))(v116, v117, v118);
    swift_storeEnumTagMultiPayload();
    (*(v120 + 40))(v116, v121, v120);
    if (((*(v120 + 56))(v117, v121, v120) & 1) == 0)
    {
      v130 = v0[14];
      v131 = v0[10];
      v132 = *(v0[11] + 8);
      v132(v0[13], v131);
      v132(v130, v131);
LABEL_38:
      v136 = v0[21];
      v135 = v0[22];
      v138 = v0[18];
      v137 = v0[19];
      v139 = v0[17];
      v141 = v0[13];
      v140 = v0[14];
      v142 = v0[12];
      v144 = v0[8];
      v143 = v0[9];

      v145 = v0[1];

      return v145();
    }

    v157 = (v0[5] + 64);
    v162 = (*v157 + **v157);
    v124 = (*v157)[1];
    v125 = swift_task_alloc();
    v0[25] = v125;
    *v125 = v0;
    v125[1] = sub_1B4ED2950;
    v126 = v0[13];
    v127 = v0[4];
    v128 = v0[5];
    v129 = v0[2];

    return v162(v126, v127, v128);
  }
}

uint64_t sub_1B4ED2950()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_1B4ED2DD0;
  }

  else
  {
    v7 = sub_1B4ED2A8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ED2A8C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[13], v2);
  v3(v1, v2);
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[8];
  v12 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B4ED2B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_1B4ED2EEC;
  }

  else
  {
    v7 = sub_1B4ED2CD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ED2CD8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B4ED2DD0()
{
  v1 = *(v0[11] + 8);
  v1(v0[13], v0[10]);
  v2 = v0[13];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[12];
  v12 = v0[9];
  v9 = v0[8];
  v13 = v0[26];
  v1(v0[14], v0[10]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4ED2EEC()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v9 = v0[8];
  v12 = v0[28];
  (*(v0[7] + 8))(v0[9], v0[6]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B4ED2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v10 = sub_1B4F678C4();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v13 = type metadata accessor for SessionMonitorState();
  v5[18] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v15 = *(*(a5 + 8) + 8);
  v17 = sub_1B4F68274();
  v5[21] = v17;
  v5[22] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1B4ED31EC, v17, v16);
}

uint64_t sub_1B4ED31EC()
{
  v169 = v0;
  v1 = v0[18];
  v2 = v0[2];
  v3 = v0[20];
  (*(v0[5] + 32))(v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = v0[3];
    (*(v0[11] + 32))(v0[16], v0[20], v0[10]);
    v47 = sub_1B4F676B4();
    v49 = v48;
    if (v47 == sub_1B4F676B4() && v49 == v50)
    {
    }

    else
    {
      v52 = sub_1B4F68D54();

      if ((v52 & 1) == 0)
      {
        if (qword_1EDB6DEF8 != -1)
        {
          swift_once();
        }

        v53 = v0[16];
        v55 = v0[13];
        v54 = v0[14];
        v56 = v0[10];
        v57 = v0[11];
        v58 = v0[3];
        v59 = sub_1B4F67C54();
        __swift_project_value_buffer(v59, qword_1EDB6DF00);
        v60 = *(v57 + 16);
        v60(v54, v58, v56);
        v60(v55, v53, v56);
        v61 = sub_1B4F67C34();
        v62 = sub_1B4F685C4();
        v63 = os_log_type_enabled(v61, v62);
        v64 = v0[16];
        v66 = v0[13];
        v65 = v0[14];
        v67 = v0[10];
        v68 = v0[11];
        if (v63)
        {
          v69 = v0[4];
          v70 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v168 = v165;
          *v70 = 136315650;
          v71 = sub_1B4F68F84();
          v158 = v62;
          v73 = sub_1B4DC4F88(v71, v72, &v168);

          *(v70 + 4) = v73;
          *(v70 + 12) = 2080;
          v74 = sub_1B4F676B4();
          v76 = v75;
          v77 = *(v68 + 8);
          v77(v65, v67);
          v78 = sub_1B4DC4F88(v74, v76, &v168);

          *(v70 + 14) = v78;
          *(v70 + 22) = 2080;
          v79 = sub_1B4F676B4();
          v81 = v80;
          v77(v66, v67);
          v82 = sub_1B4DC4F88(v79, v81, &v168);

          *(v70 + 24) = v82;
          _os_log_impl(&dword_1B4DC2000, v61, v158, "[%s] Can't end session %s while waiting for session %s", v70, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C831D0](v165, -1, -1);
          MEMORY[0x1B8C831D0](v70, -1, -1);

          v77(v64, v67);
        }

        else
        {

          v152 = *(v68 + 8);
          v152(v66, v67);
          v152(v65, v67);
          v152(v64, v67);
        }

        goto LABEL_37;
      }
    }

    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v112 = v0[15];
    v113 = v0[10];
    v114 = v0[11];
    v115 = v0[3];
    v116 = sub_1B4F67C54();
    __swift_project_value_buffer(v116, qword_1EDB6DF00);
    (*(v114 + 16))(v112, v115, v113);
    v117 = sub_1B4F67C34();
    v118 = sub_1B4F685E4();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v0[15];
    v121 = v0[10];
    v122 = v0[11];
    if (v119)
    {
      v123 = v0[4];
      v162 = v0[10];
      v124 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168 = v167;
      *v124 = 136315394;
      v125 = sub_1B4F68F84();
      v127 = sub_1B4DC4F88(v125, v126, &v168);

      *(v124 + 4) = v127;
      *(v124 + 12) = 2080;
      v128 = sub_1B4F676B4();
      v130 = v129;
      v131 = *(v122 + 8);
      v131(v120, v162);
      v132 = sub_1B4DC4F88(v128, v130, &v168);

      *(v124 + 14) = v132;
      _os_log_impl(&dword_1B4DC2000, v117, v118, "[%s] Ending session: %s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v167, -1, -1);
      MEMORY[0x1B8C831D0](v124, -1, -1);
    }

    else
    {

      v131 = *(v122 + 8);
      v131(v120, v121);
    }

    v133 = v0[18];
    v134 = v0[19];
    v135 = v0[16];
    v136 = v0[10];
    v138 = v0[4];
    v137 = v0[5];
    v139 = v0[2];
    swift_storeEnumTagMultiPayload();
    (*(v137 + 40))(v134, v138, v137);
    v131(v135, v136);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v83 = v0[17];
    v84 = v0[10];
    v85 = v0[11];
    v86 = v0[3];
    v87 = sub_1B4F67C54();
    __swift_project_value_buffer(v87, qword_1EDB6DF00);
    (*(v85 + 16))(v83, v86, v84);
    v88 = sub_1B4F67C34();
    v89 = sub_1B4F685C4();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v0[17];
    v92 = v0[10];
    v93 = v0[11];
    if (v90)
    {
      v94 = v0[4];
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v168 = v96;
      *v95 = 136315394;
      v97 = sub_1B4F68F84();
      v99 = sub_1B4DC4F88(v97, v98, &v168);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      v100 = sub_1B4F676B4();
      v102 = v101;
      (*(v93 + 8))(v91, v92);
      v103 = sub_1B4DC4F88(v100, v102, &v168);

      *(v95 + 14) = v103;
      _os_log_impl(&dword_1B4DC2000, v88, v89, "[%s] Can't end session that was never started: %s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v96, -1, -1);
      MEMORY[0x1B8C831D0](v95, -1, -1);
    }

    else
    {

      (*(v93 + 8))(v91, v92);
    }

    goto LABEL_37;
  }

  v5 = v0[6];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  (*(v0[7] + 32))(v0[9], v0[20], v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = v10(v5, AssociatedConformanceWitness);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);

  if (v13 == sub_1B4F676B4() && v12 == v14)
  {
  }

  else
  {
    v16 = sub_1B4F68D54();

    if ((v16 & 1) == 0)
    {
      v157 = v10;
      if (qword_1EDB6DEF8 != -1)
      {
        swift_once();
      }

      v18 = v0[11];
      v17 = v0[12];
      v19 = v0[10];
      v20 = v0[7];
      v159 = v0[8];
      v163 = v0[9];
      v21 = v0[6];
      v22 = v0[3];
      v23 = sub_1B4F67C54();
      __swift_project_value_buffer(v23, qword_1EDB6DF00);
      (*(v18 + 16))(v17, v22, v19);
      (*(v20 + 16))(v159, v163, v21);
      v24 = sub_1B4F67C34();
      v160 = sub_1B4F685C4();
      v25 = os_log_type_enabled(v24, v160);
      v27 = v0[11];
      v26 = v0[12];
      v28 = v0[9];
      v164 = v0[10];
      v30 = v0[7];
      v29 = v0[8];
      v31 = v0[6];
      if (v25)
      {
        v153 = v0[6];
        v32 = v0[4];
        log = v24;
        v33 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v168 = v156;
        *v33 = 136315650;
        v34 = sub_1B4F68F84();
        v155 = v28;
        v36 = sub_1B4DC4F88(v34, v35, &v168);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        v37 = sub_1B4F676B4();
        v39 = v38;
        (*(v27 + 8))(v26, v164);
        v40 = sub_1B4DC4F88(v37, v39, &v168);

        *(v33 + 14) = v40;
        *(v33 + 22) = 2080;
        v41 = v157(v153, AssociatedConformanceWitness);
        v42 = *(v30 + 8);
        v42(v29, v153);
        v43 = *(v41 + 16);
        v44 = *(v41 + 24);

        v45 = sub_1B4DC4F88(v43, v44, &v168);

        *(v33 + 24) = v45;
        _os_log_impl(&dword_1B4DC2000, log, v160, "[%s] Can't end session %s while active for session %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C831D0](v156, -1, -1);
        MEMORY[0x1B8C831D0](v33, -1, -1);

        v42(v155, v153);
      }

      else
      {

        v151 = *(v30 + 8);
        v151(v29, v31);
        (*(v27 + 8))(v26, v164);
        v151(v28, v31);
      }

LABEL_37:
      v141 = v0[19];
      v140 = v0[20];
      v143 = v0[16];
      v142 = v0[17];
      v145 = v0[14];
      v144 = v0[15];
      v147 = v0[12];
      v146 = v0[13];
      v149 = v0[8];
      v148 = v0[9];

      v150 = v0[1];

      return v150();
    }
  }

  v161 = (v0[5] + 80);
  v166 = (*v161 + **v161);
  v104 = (*v161)[1];
  v105 = swift_task_alloc();
  v0[23] = v105;
  *v105 = v0;
  v105[1] = sub_1B4ED3E9C;
  v106 = v0[9];
  v107 = v0[4];
  v108 = v0[5];
  v110 = v0[2];
  v109 = v0[3];

  return v166(v109, v106, v107, v108);
}

uint64_t sub_1B4ED3E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_1B4ED40CC;
  }

  else
  {
    v7 = sub_1B4ED3FD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B4ED3FD8()
{
  (*(v0[7] + 8))(v0[9], v0[6]);
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B4ED40CC()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v12 = v0[8];
  (*(v0[7] + 8))(v0[9], v0[6]);

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

uint64_t sub_1B4ED41C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED0CD0(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED2FF0(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4ED1A98(a1, v7, v6, v4, v5);
}

uint64_t sub_1B4ED4408(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1B4F678C4() - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_1B4ED4564(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1B4F678C4() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (*(v9 + 64) > v8)
  {
    v8 = *(v9 + 64);
  }

  v10 = v8 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t dispatch thunk of SessionMonitor.startSession(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.sessionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.endSession(session:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE13F0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.playbackUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.activityRingsUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.workoutDeviceConnectionUpdated(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionActivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionDeactivated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SessionMonitor.handleSessionUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3);
}

uint64_t XPCServerClientDisconnected.processName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t XPCServerClientDisconnected.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1B4ED52B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B4ED5310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MultiUserSessionConnected.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionConnected.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionConnected()
{
  result = qword_1EDB6E768;
  if (!qword_1EDB6E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCStreamEventReceived.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B4ED5514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4ED555C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MultiUserCelebrationRequested.init(celebration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MultiUserCelebrationRequested.celebration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66464();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MultiUserCelebrationRequested()
{
  result = qword_1EB8F6488;
  if (!qword_1EB8F6488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED5700()
{
  result = sub_1B4F66464();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TrainerEventStarted.trainerEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainerEventStarted.init(trainerEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for TrainerEventStarted()
{
  result = qword_1EB8F6498;
  if (!qword_1EB8F6498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.__allocating_init(identifier:signpostID:poster:telemetryEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *(v7 + 48);
  v15 = *(v7 + 52);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v17 = a1;
  *(v17 + 8) = a2;
  *(v17 + 16) = a3;
  v18 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v19 = sub_1B4F67BA4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16 + v18, a4, v19);
  *(v16 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = a6;
  v21 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v22 = sub_1B4F67BD4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v16 + v21, a5, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  (*(v23 + 8))(a5, v22);
  (*(v20 + 8))(a4, v19);
  *(v24 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v24;
  return v16;
}

uint64_t Signpost.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF388((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v3 = sub_1B4F67BD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v5 = sub_1B4F67BA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t type metadata accessor for Signpost()
{
  result = qword_1EDB702A0;
  if (!qword_1EDB702A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED5BA0()
{
  result = sub_1B4F67BD4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B4F67BA4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4ED5CB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4ED5D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B4ED5D5C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B4ED5D74(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t static String.read(from:key:)(void *a1)
{
  v2 = sub_1B4F67F64();
  v3 = [a1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B4F67F74();

  return v4;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_1B4ED5F94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4ED78E4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1B4ED5FCC(void *a1)
{
  v3 = *v1;
  v4 = sub_1B4F67F64();
  [a1 setInteger:v3 forKey:v4];
}

Swift::Void __swiftcall UInt64.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_1B4F68F34();
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

uint64_t sub_1B4ED60DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4ED78E4(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1B4ED6114(void *a1)
{
  v3 = *v1;
  v4 = sub_1B4F68F34();
  v5 = sub_1B4F67F64();
  [a1 setObject:v4 forKey:v5];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_1B4F67F64();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

void sub_1B4ED6204(void *a1)
{
  v3 = *v1;
  v4 = sub_1B4F67F64();
  [a1 setBool:v3 forKey:v4];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_1B4F67F64();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

void sub_1B4ED62F8(void *a1)
{
  v3 = *v1;
  v4 = sub_1B4F67F64();
  [a1 setDouble:v4 forKey:v3];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_1B4F67F64();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_1B4ED6404@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B4ED7484(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1B4ED6434(void *a1)
{
  v3 = *v1;
  v5 = sub_1B4F67F64();
  LODWORD(v4) = v3;
  [a1 setFloat:v5 forKey:v4];
}

void sub_1B4ED64C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_1B4F67F64();
  [a1 setObject:v7 forKey:v8];
}

uint64_t sub_1B4ED654C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s10Foundation4DataV13SeymourClientE4read4from3keyACSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1B4ED658C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_1B4F67F64();
  [a1 setObject:v8 forKey:v9];
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v12, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v23, v22);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    return (*(v10 + 8))(v14, a4);
  }

  (*(v17 + 32))(v21, v14, v16);
  (*(a5 + 16))(a1, a2, a3, v16, a5);
  return (*(v17 + 8))(v21, v16);
}

uint64_t static Array<A>.read(from:key:)(void *a1)
{
  v2 = sub_1B4F67F64();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    swift_getAssociatedTypeWitness();
    sub_1B4F68254();
    v4 = swift_dynamicCast();
    if (v4)
    {
      *&v11[0] = v8;
      MEMORY[0x1EEE9AC00](v4, v5);
      swift_getWitnessTable();
      v6 = sub_1B4F680E4();

      return v6;
    }
  }

  else
  {
    sub_1B4DDA43C(v11);
  }

  return 0;
}

uint64_t sub_1B4ED69C4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  (*(v7 + 16))(&v9 - v6, a1, v5);
  return sub_1B4F68154();
}

void Array<A>.write(to:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v8 = sub_1B4F68254();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  sub_1B4E6CE74(sub_1B4ED79E8, v14, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  v12 = sub_1B4F681B4();

  v13 = sub_1B4F67F64();
  [a1 setObject:v12 forKey:v13];
}

uint64_t sub_1B4ED6BF8@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 16);
  v6 = *(a3 - 8);
  v7 = *(a2 + 16);
  result = static Array<A>.read(from:key:)(a1);
  *a4 = result;
  return result;
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v54 = a1;
  v55 = a7;
  v12 = sub_1B4F687D4();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v53 = &v49 - v15;
  v52 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1B4F687D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v49 - v21;
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v49 - v31;
  v33 = *(a6 + 8);
  v34 = v54;
  v49 = a2;
  v54 = a3;
  v35 = a6;
  v37 = v36;
  v33(v34, a2, a3, AssociatedTypeWitness, v35, v30);
  if ((*(v37 + 48))(v22, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v22, v17);
    return (*(*(a4 - 8) + 56))(v55, 1, 1, a4);
  }

  else
  {
    v39 = v55;
    (*(v37 + 32))(v32, v22, AssociatedTypeWitness);
    (*(v37 + 16))(v27, v32, AssociatedTypeWitness);
    v40 = v53;
    sub_1B4F68154();
    v41 = *(a4 - 8);
    if ((*(v41 + 48))(v40, 1, a4) == 1)
    {
      v52 = v37;
      (*(v50 + 8))(v40, v51);
      if (qword_1EDB724A8 != -1)
      {
        swift_once();
      }

      v42 = sub_1B4F67C54();
      __swift_project_value_buffer(v42, qword_1EDB72490);
      v43 = v54;

      v44 = sub_1B4F67C34();
      v45 = sub_1B4F685C4();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v32;
        v48 = swift_slowAlloc();
        v56 = v48;
        *v46 = 141558274;
        *(v46 + 4) = 1752392040;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_1B4DC4F88(v49, v43, &v56);
        _os_log_impl(&dword_1B4DC2000, v44, v45, "Couldn't parse user default %{mask.hash}s.", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1B8C831D0](v48, -1, -1);
        MEMORY[0x1B8C831D0](v46, -1, -1);

        (*(v52 + 8))(v47, AssociatedTypeWitness);
      }

      else
      {

        (*(v52 + 8))(v32, AssociatedTypeWitness);
      }

      return (*(v41 + 56))(v39, 1, 1, a4);
    }

    else
    {
      (*(v37 + 8))(v32, AssociatedTypeWitness);
      (*(v41 + 32))(v39, v40, a4);
      return (*(v41 + 56))(v39, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v18 - v15;
  sub_1B4F68144();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v16, AssociatedTypeWitness);
}

BOOL sub_1B4ED72B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_1B4F689B4();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _s10Foundation4DataV13SeymourClientE4read4from3keyACSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_1B4F67F64();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4DDA43C(v8);
    return 0;
  }
}

unint64_t sub_1B4ED7484(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B4F67F64();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
    goto LABEL_16;
  }

  sub_1B4F68894();
  swift_unknownObjectRelease();
  sub_1B4DC4F2C(v38, v37);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v8 = 0;
    v9 = *v35;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  sub_1B4DC4F2C(v38, v37);
  if (!swift_dynamicCast())
  {
    sub_1B4DC4F2C(v38, v37);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v8 = 0;
      v11 = *v35;
      v9 = v11;
      return LODWORD(v9) | ((v8 & 1) << 32);
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4F67C54();
    __swift_project_value_buffer(v12, qword_1EDB72490);
    sub_1B4DC4F2C(v38, v37);
    sub_1B4DC4F2C(v38, v35);

    v13 = sub_1B4F67C34();
    v14 = sub_1B4F685C4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1B4DC4F88(a2, a3, &v34);
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      swift_getDynamicType();
      v17 = sub_1B4F68F84();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v20 = sub_1B4DC4F88(v17, v19, &v34);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = v36;
      v22 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v23 = *(*(v21 - 8) + 64);
      v24 = MEMORY[0x1EEE9AC00](v22, v22);
      (*(v26 + 16))(&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      v27 = sub_1B4F67F94();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v30 = sub_1B4DC4F88(v27, v29, &v34);

      *(v15 + 24) = v30;
      _os_log_impl(&dword_1B4DC2000, v13, v14, "Couldn't parse Float at %s with type %s and value %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v16, -1, -1);
      MEMORY[0x1B8C831D0](v15, -1, -1);

      v31 = v38;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v31 = v35;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
LABEL_16:
    v9 = 0.0;
    v8 = 1;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  LODWORD(v37[0]) = 0;
  v10 = sub_1B4ED72B8(v35[0], v35[1], v37, MEMORY[0x1E69E7CE0]);

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v9 = *v37;
  if (!v10)
  {
    v9 = 0.0;
  }

  v8 = !v10;
  return LODWORD(v9) | ((v8 & 1) << 32);
}

uint64_t sub_1B4ED78E4(void *a1)
{
  v2 = sub_1B4F67F64();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B4DDA43C(v8);
    return 0;
  }
}

uint64_t sub_1B4ED79C8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B4ED69C4(a1);
}

uint64_t sub_1B4ED79E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1B4F68144();
}

_BYTE *sub_1B4ED7A9C@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *SessionToken.__allocating_init(sessionIdentifier:state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = a3 & 1;
  v6[4] = v7;
  return v6;
}

SeymourClient::SessionToken::State_optional __swiftcall SessionToken.State.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B4F68C34();

  if (v1 == 1)
  {
    v2.value = SeymourClient_SessionToken_State_inactive;
  }

  else
  {
    v2.value = SeymourClient_SessionToken_State_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SessionToken.State.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6576697463616E69;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1B4ED7C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6576697463616E69;
  }

  else
  {
    v4 = 0x657669746361;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6576697463616E69;
  }

  else
  {
    v6 = 0x657669746361;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4F68D54();
  }

  return v9 & 1;
}

uint64_t sub_1B4ED7CD0()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED7D50()
{
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4ED7DBC()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED7E38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4F68C34();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4ED7E98(uint64_t *a1@<X8>)
{
  v2 = 0x657669746361;
  if (*v1)
  {
    v2 = 0x6576697463616E69;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SessionToken.sessionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *SessionToken.init(sessionIdentifier:state:)(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = a1;
  v3[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B8, &qword_1B4F71190);
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = a3 & 1;
  v3[4] = v5;
  return v3;
}

uint64_t SessionToken.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SessionToken.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t SessionToken.hash(into:)()
{
  v1 = v0[4];
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16))
  {
    v2 = 0x6576697463616E69;
  }

  else
  {
    v2 = 0x657669746361;
  }

  if (*(v1 + 16))
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  os_unfair_lock_unlock((v1 + 20));
  v6 = v0[2];
  v7 = v0[3];

  MEMORY[0x1B8C818C0](v2, v3);

  v4 = MEMORY[0x1B8C81930](v6, v7);

  return MEMORY[0x1B8C82740](v4);
}

uint64_t SessionToken.hashValue.getter()
{
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED80DC()
{
  v1 = *v0;
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4ED8144()
{
  v1 = *v0;
  sub_1B4F68E84();
  SessionToken.hash(into:)();
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient12SessionTokenC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4];
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  v6 = a2[4];
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v5)
  {
    v8 = 0x6576697463616E69;
  }

  else
  {
    v8 = 0x657669746361;
  }

  if (v5)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v7)
  {
    v10 = 0x6576697463616E69;
  }

  else
  {
    v10 = 0x657669746361;
  }

  if (v7)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_1B4F68D54();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  return sub_1B4F68D54();
}

unint64_t sub_1B4ED82B8()
{
  result = qword_1EB8F64A8;
  if (!qword_1EB8F64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F64A8);
  }

  return result;
}

unint64_t sub_1B4ED8310()
{
  result = qword_1EB8F64B0;
  if (!qword_1EB8F64B0)
  {
    type metadata accessor for SessionToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F64B0);
  }

  return result;
}

uint64_t ArchivedSessionHealthKitStatistics.workoutIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4ED8500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4ED8548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4ED8598@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B4ED9618;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B4DEA370(v4);
}

uint64_t sub_1B4ED8638(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B4ED95F0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B4DEA370(v3);
  return sub_1B4DD2C78(v8);
}

uint64_t DispatchTimer.onFire.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1B4DEA370(v3);
  return v3;
}

uint64_t DispatchTimer.onFire.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B4DD2C78(v6);
}

uint64_t DispatchTimer.__allocating_init(fireInterval:leewayInterval:queue:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = (v9 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v10 = 0;
  v10[1] = 0;
  *(v9 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v9 + 16) = a3;
  v11 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v12 = sub_1B4F67D44();
  (*(*(v12 - 8) + 32))(v9 + v11, a1, v12);
  *(v9 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = a2;
  return v9;
}

uint64_t DispatchTimer.init(fireInterval:leewayInterval:queue:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  *v6 = 0;
  v6[1] = 0;
  *(v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer) = 0;
  *(v3 + 16) = a3;
  v7 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v8 = sub_1B4F67D44();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue) = a2;
  return v3;
}

uint64_t DispatchTimer.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
  v5 = sub_1B4F67D44();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  v6 = *(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire + 8);
  sub_1B4DD2C78(*(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire));
  v7 = *(v1 + v2);
  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall DispatchTimer.cancel()()
{
  v1 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  swift_unknownObjectRelease();
}

uint64_t DispatchTimer.__deallocating_deinit()
{
  DispatchTimer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DispatchTimer.schedule()()
{
  v1 = sub_1B4F67D94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  sub_1B4F67D84();
  v11 = *(v0 + 16);
  sub_1B4F67DB4();
  v12 = *(v2 + 8);
  v12(v6, v1);
  sub_1B4ED8C48(v10);
  v12(v10, v1);
}

uint64_t sub_1B4ED8C48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67D54();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4F67D74();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F68684();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B4F67D44();
  v20 = *(v42 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v42, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    ObjectType = swift_getObjectType();
    v26 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
    sub_1B4DD48A4(v24);
    swift_unknownObjectRetain();
    MEMORY[0x1B8C81FE0](a1, v24, v1 + v26, ObjectType);
    swift_unknownObjectRelease();
    return (*(v20 + 8))(v24, v42);
  }

  else
  {
    v37 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
    v35 = sub_1B4DD44F4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B4ED9640();
    v36 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
    sub_1B4ED9698();
    sub_1B4F688A4();
    v28 = *(v1 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_queue);
    v29 = sub_1B4F68694();
    (*(v15 + 8))(v19, v14);
    v30 = swift_getObjectType();
    v31 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B4ED96FC;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_9;
    v32 = _Block_copy(aBlock);

    sub_1B4DD4588();
    sub_1B4DD458C();
    sub_1B4F686B4();
    _Block_release(v32);
    (*(v40 + 8))(v8, v41);
    (*(v38 + 8))(v13, v39);

    v33 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_leewayInterval;
    sub_1B4DD48A4(v24);
    MEMORY[0x1B8C81FE0](v36, v24, v2 + v33, v30);
    (*(v20 + 8))(v24, v42);
    sub_1B4F686E4();
    v34 = *(v2 + v37);
    *(v2 + v37) = v29;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1B4ED90DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4ED9134();
  }

  return result;
}

uint64_t sub_1B4ED9134()
{
  v1 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v7);
    return sub_1B4DD2C78(v5);
  }

  return result;
}

uint64_t sub_1B4ED91F4()
{
  v1 = (*v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1B4DEA370(v3);
  return v3;
}

uint64_t sub_1B4ED9254(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_onFire);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B4DD2C78(v6);
}

uint64_t (*sub_1B4ED92B8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B4ED931C()
{
  v1 = sub_1B4F67D94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = *v0;
  sub_1B4F67D84();
  v12 = *(v11 + 16);
  sub_1B4F67DB4();
  v13 = *(v2 + 8);
  v13(v6, v1);
  sub_1B4ED8C48(v10);
  return (v13)(v10, v1);
}

uint64_t sub_1B4ED9434()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer;
  if (*(*v0 + OBJC_IVAR____TtC13SeymourClient13DispatchTimer_sourceTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B4F686C4();
    swift_unknownObjectRelease();
    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for DispatchTimer()
{
  result = qword_1EB8F64B8;
  if (!qword_1EB8F64B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4ED9504()
{
  result = sub_1B4F67D44();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4ED95F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B4ED9618()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1B4ED9640()
{
  result = qword_1EDB71448;
  if (!qword_1EDB71448)
  {
    sub_1B4F68684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71448);
  }

  return result;
}

unint64_t sub_1B4ED9698()
{
  result = qword_1EDB71478;
  if (!qword_1EDB71478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6530, &unk_1B4F7ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71478);
  }

  return result;
}

uint64_t WorkoutUpdated.workout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F679A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for WorkoutUpdated()
{
  result = qword_1EDB6F020;
  if (!qword_1EDB6F020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutUpdated.init(workout:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F679A4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for WorkoutUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

BOOL CommunityScores.isEmpty.getter()
{
  v0 = *(sub_1B4F65A74() + 16);

  if (!v0)
  {
    return 1;
  }

  v1 = *(sub_1B4F65A54() + 16);

  if (!v1)
  {
    return 1;
  }

  v2 = *(sub_1B4F65A64() + 16);

  if (!v2)
  {
    return 1;
  }

  v3 = *(sub_1B4F65A84() + 16);

  return v3 == 0;
}

unsigned __int8 *BuildVersion.init(rawValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6138, &qword_1B4F784C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  v15 = sub_1B4F64F44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  v56 = 46;
  v57 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v21 = sub_1B4F68844();
  if (!v21[2])
  {

LABEL_73:
    v48 = 1;
    return (*(v16 + 56))(a3, v48, 1, v15);
  }

  v55 = a3;
  v23 = v21[4];
  v22 = v21[5];

  v25 = HIBYTE(v22) & 0xF;
  v26 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v27 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_66;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    v29 = sub_1B4F40DF0(v23, v22, 10);
    v47 = v53;
LABEL_65:

    if (v47)
    {
LABEL_66:

      v48 = 1;
      a3 = v55;
      return (*(v16 + 56))(a3, v48, 1, v15);
    }

    v49 = (v16 + 48);
    if (v29 >= 2026)
    {
      sub_1B4EDABD8(a1, a2, v14);
      v52 = (*v49)(v14, 1, v15);
      a3 = v55;
      if (v52)
      {
        v51 = v14;
        goto LABEL_72;
      }
    }

    else
    {
      sub_1B4EDA51C(a1, a2, v10);
      v50 = (*v49)(v10, 1, v15);
      a3 = v55;
      if (v50)
      {
        v51 = v10;
LABEL_72:
        sub_1B4EB33D0(v51);
        goto LABEL_73;
      }

      v14 = v10;
    }

    sub_1B4EB3438(v14, v20);
    sub_1B4EB3438(v20, a3);
    v48 = 0;
    return (*(v16 + 56))(a3, v48, 1, v15);
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((v23 & 0x1000000000000000) != 0)
    {
      result = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B4F68A34();
    }

    v28 = *result;
    if (v28 == 43)
    {
      if (v26 >= 1)
      {
        v25 = v26 - 1;
        if (v26 != 1)
        {
          v29 = 0;
          if (result)
          {
            v36 = result + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_63;
              }

              v38 = 10 * v29;
              if ((v29 * 10) >> 64 != (10 * v29) >> 63)
              {
                goto LABEL_63;
              }

              v29 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_63;
              }

              ++v36;
              if (!--v25)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_82;
    }

    if (v28 != 45)
    {
      if (v26)
      {
        v29 = 0;
        if (result)
        {
          while (1)
          {
            v42 = *result - 48;
            if (v42 > 9)
            {
              goto LABEL_63;
            }

            v43 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_63;
            }

            v29 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v26)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v29 = 0;
      LOBYTE(v25) = 1;
      goto LABEL_64;
    }

    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_63;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_63;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_63;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v25) = 0;
LABEL_64:
        LOBYTE(v56) = v25;
        v47 = v25;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v58 = v23;
  v59 = v22 & 0xFFFFFFFFFFFFFFLL;
  if (v23 != 43)
  {
    if (v23 != 45)
    {
      if (v25)
      {
        v29 = 0;
        v44 = &v58;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v25)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v25)
    {
      if (--v25)
      {
        v29 = 0;
        v33 = &v58 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v25)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_81;
  }

  if (v25)
  {
    if (--v25)
    {
      v29 = 0;
      v39 = &v58 + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v25)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t BuildVersion.rawValue.getter()
{
  if (*(v0 + 8))
  {
    return sub_1B4ED9E98();
  }

  else
  {
    return sub_1B4EDA1E0();
  }
}

uint64_t sub_1B4ED9E98()
{
  v1 = sub_1B4F65244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0[4];
  v7 = sub_1B4F68D04();
  v9 = v8;
  v10 = v0[6];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v0[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v29 = 46;
    v30 = 0xE100000000000000;
    MEMORY[0x1B8C818C0]();
    v13 = v29;
    v12 = v30;
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v29 = v7;
  v30 = v9;

  MEMORY[0x1B8C818C0](v13, v12);

  v28[0] = 46;
  v28[1] = 0xE100000000000000;
  sub_1B4DCAC7C();
  v14 = sub_1B4F68844();

  v15 = *(sub_1B4F64F44() + 32);
  sub_1B4F651D4();
  sub_1B4EDB2D0(&qword_1EB8F60C8);
  v16 = sub_1B4F67F54();
  v17 = *(v2 + 8);
  v17(v6, v1);
  if (v16)
  {
    goto LABEL_14;
  }

  sub_1B4F65214();
  v18 = sub_1B4F67F54();
  v17(v6, v1);
  if (v18)
  {
    goto LABEL_14;
  }

  v19 = sub_1B4EB27BC();
  if (v20)
  {
    goto LABEL_14;
  }

  v29 = v19;
  result = sub_1B4F68D04();
  v23 = *(v14 + 16);
  if (v23)
  {
    v24 = result;
    v25 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v14;
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v14 + 24) >> 1)
    {
      v14 = sub_1B4E7884C(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v14);
      v29 = v14;
    }

    sub_1B4EDC05C(v23 - 1, v23 - 1, 1, v24, v25);

LABEL_14:
    v28[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E21468(&qword_1EDB6DB98, &qword_1EB8F52A8, &qword_1B4F72730);
    v27 = sub_1B4F67F34();

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EDA1E0()
{
  v1 = sub_1B4F65244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_1B4F64F44() + 32);
  sub_1B4F651D4();
  sub_1B4EDB2D0(&qword_1EB8F6538);
  sub_1B4F68144();
  sub_1B4F68144();
  (*(v2 + 8))(v6, v1);
  if (v24 == v26)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    v8 = *v0;
    if (*(v0 + 8))
    {
      v8 = 0;
    }

    v26 = v8;
    v9 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v9);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v10 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v10 = 0;
    }

    v26 = v10;
    v11 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v11);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v26 = *(v0 + 32);
    v12 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v12);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    v13 = *v0;
    if (*(v0 + 8))
    {
      v13 = 0;
    }

    v26 = v13;
    v14 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v14);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v15 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v15 = 0;
    }

    v26 = v15;
    v16 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v16);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v26 = *(v0 + 32);
    v17 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v17);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    v18 = sub_1B4EB27BC();
    v20 = 31337;
    if ((v19 & 1) == 0)
    {
      v20 = v18;
    }

    v26 = v20;
    v21 = sub_1B4F68D04();
    MEMORY[0x1B8C818C0](v21);

    MEMORY[0x1B8C818C0](46, 0xE100000000000000);
    MEMORY[0x1B8C818C0](*(v0 + 40), *(v0 + 48));
  }

  return v24;
}

unsigned __int8 *sub_1B4EDA51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F65244();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = sub_1B4F64F44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = a1;
  *(&v70 + 1) = a2;
  v73 = 46;
  v74 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v15 = sub_1B4F68844();

  v17 = v15[2];
  if (!v17)
  {
    goto LABEL_64;
  }

  v69 = v14;
  v19 = v15[4];
  v18 = v15[5];
  v20 = HIBYTE(v18) & 0xF;
  v21 = v19 & 0xFFFFFFFFFFFFLL;
  if (!((v18 & 0x2000000000000000) != 0 ? HIBYTE(v18) & 0xF : v19 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_64;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v48 = v15[5];

    sub_1B4F40DF0(v19, v18, 10);
    v50 = v49;

    if (v50)
    {
      goto LABEL_64;
    }

    goto LABEL_66;
  }

  if ((v18 & 0x2000000000000000) != 0)
  {
    *&v70 = v15[4];
    *(&v70 + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
    if (v19 == 43)
    {
      if (!v20)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (--v20)
      {
        v36 = 0;
        v37 = &v70 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v36;
          if ((v36 * 10) >> 64 != (10 * v36) >> 63)
          {
            break;
          }

          v36 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v20)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v19 == 45)
    {
      if (!v20)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (--v20)
      {
        v28 = 0;
        v29 = &v70 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v20)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v20)
    {
      v43 = 0;
      v44 = &v70;
      while (1)
      {
        v45 = *v44 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v43;
        if ((v43 * 10) >> 64 != (10 * v43) >> 63)
        {
          break;
        }

        v43 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v44;
        if (!--v20)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    result = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v64 = v15[4];
    v65 = v15[5];
    result = sub_1B4F68A34();
  }

  v23 = *result;
  if (v23 == 43)
  {
    if (v21 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v20 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_62;
    }

    v32 = 0;
    if (result)
    {
      v33 = result + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          goto LABEL_62;
        }

        v35 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_62;
        }

        v32 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          goto LABEL_62;
        }

        ++v33;
        if (!--v20)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_54;
  }

  if (v23 == 45)
  {
    if (v21 < 1)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v20 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_62;
    }

    v24 = 0;
    if (result)
    {
      v25 = result + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          goto LABEL_62;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          goto LABEL_62;
        }

        v24 = v27 - v26;
        if (__OFSUB__(v27, v26))
        {
          goto LABEL_62;
        }

        ++v25;
        if (!--v20)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_54:
    LOBYTE(v20) = 0;
    goto LABEL_63;
  }

  if (v21)
  {
    v40 = 0;
    if (result)
    {
      while (1)
      {
        v41 = *result - 48;
        if (v41 > 9)
        {
          goto LABEL_62;
        }

        v42 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          goto LABEL_62;
        }

        v40 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_62;
        }

        ++result;
        if (!--v21)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  LOBYTE(v20) = 1;
LABEL_63:
  LOBYTE(v73) = v20;
  if (v20)
  {
LABEL_64:

    v47 = 1;
    return (*(v10 + 56))(a3, v47, 1, v9);
  }

LABEL_66:
  v68 = v9;
  v51 = v15[2];
  if (v51 >= 3)
  {
    if (v17 == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = v17 - 2;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v67 = a3;
      if (v51 >= v52)
      {
        v53 = v52 != 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B4F6CF50;
        v55 = (2 * v52) | 1;
        v56 = &v15[2 * v51 + 4];
        v57 = *(v56 - 8);
        *(inited + 32) = *(v56 - 16);
        *(inited + 40) = v57;
        *&v70 = v15;
        *(&v70 + 1) = v15 + 4;
        v71 = v53;
        v72 = v55;

        sub_1B4EDB494(inited);
        v66 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
        sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998);
        result = sub_1B4F67F34();
        if (v51 - 2 < v15[2])
        {
          v58 = &v15[2 * v51];
          v59 = *v58;
          v60 = v58[1];

          v61 = sub_1B4F404B4(v59, v60);
          sub_1B4EB2768(v61, v62 & 1);
          v63 = v69;
          sub_1B4F64F24();
          swift_unknownObjectRelease();
          a3 = v67;
          v9 = v68;
LABEL_79:
          sub_1B4EB3438(v63, a3);
          v47 = 0;
          return (*(v10 + 56))(a3, v47, 1, v9);
        }

        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v51 != 2)
  {

    goto LABEL_78;
  }

  if (v17 <= 2)
  {
    *&v70 = v15;
    *(&v70 + 1) = v15 + 4;
    v71 = 1;
    v72 = (2 * v17) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4F67F34();

LABEL_78:
    v9 = v68;
    sub_1B4F651D4();
    v63 = v69;
    sub_1B4F64F24();
    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B4EDABD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F65244();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v65 - v12;
  v14 = sub_1B4F64F44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v71 = a2;
  v74 = 46;
  v75 = 0xE100000000000000;
  sub_1B4DCAC7C();
  v20 = sub_1B4F68844();

  v22 = v20[2];
  if (v22 < 3 || ((v66 = v6, v25 = v20[4], v24 = v20[5], v26 = HIBYTE(v24) & 0xF, v27 = v25 & 0xFFFFFFFFFFFFLL, (v24 & 0x2000000000000000) != 0) ? (v28 = HIBYTE(v24) & 0xF) : (v28 = v25 & 0xFFFFFFFFFFFFLL), !v28))
  {

    v23 = 1;
    return (*(v15 + 56))(a3, v23, 1, v14);
  }

  v67 = a3;
  if ((v24 & 0x1000000000000000) != 0)
  {

    v30 = sub_1B4F40DF0(v25, v24, 10);
    v64 = v63;

    if (v64)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if ((v24 & 0x2000000000000000) != 0)
  {
    v70 = v25;
    v71 = v24 & 0xFFFFFFFFFFFFFFLL;
    if (v25 == 43)
    {
      if (!v26)
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (--v26)
      {
        v30 = 0;
        v40 = &v70 + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v26)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v25 == 45)
    {
      if (!v26)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (--v26)
      {
        v30 = 0;
        v34 = &v70 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v26)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v26)
    {
      v30 = 0;
      v45 = &v70;
      while (1)
      {
        v46 = *v45 - 48;
        if (v46 > 9)
        {
          break;
        }

        v47 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          break;
        }

        ++v45;
        if (!--v26)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B4F68A34();
  }

  v29 = *result;
  if (v29 == 43)
  {
    if (v27 < 1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v26 = v27 - 1;
    if (v27 == 1)
    {
      goto LABEL_63;
    }

    v30 = 0;
    if (result)
    {
      v37 = result + 1;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          goto LABEL_63;
        }

        v39 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_63;
        }

        v30 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_63;
        }

        ++v37;
        if (!--v26)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_55;
  }

  if (v29 == 45)
  {
    if (v27 < 1)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v26 = v27 - 1;
    if (v27 == 1)
    {
      goto LABEL_63;
    }

    v30 = 0;
    if (result)
    {
      v31 = result + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          goto LABEL_63;
        }

        v33 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_63;
        }

        v30 = v33 - v32;
        if (__OFSUB__(v33, v32))
        {
          goto LABEL_63;
        }

        ++v31;
        if (!--v26)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_55:
    LOBYTE(v26) = 0;
    goto LABEL_64;
  }

  if (v27)
  {
    v30 = 0;
    if (result)
    {
      while (1)
      {
        v43 = *result - 48;
        if (v43 > 9)
        {
          goto LABEL_63;
        }

        v44 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_63;
        }

        v30 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v27)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v30 = 0;
  LOBYTE(v26) = 1;
LABEL_64:
  LOBYTE(v74) = v26;
  if (v26)
  {
LABEL_66:

    v23 = 1;
    a3 = v67;
    return (*(v15 + 56))(a3, v23, 1, v14);
  }

LABEL_65:
  if (v30 < 2026)
  {
    goto LABEL_66;
  }

  if (v20[2] < 2uLL)
  {
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v48 = v20[6];
  v49 = v20[7];

  result = sub_1B4F404B4(v48, v49);
  if (v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = result;
  }

  v65[1] = v51;
  if (v20[2] < 3uLL)
  {
    goto LABEL_86;
  }

  v52 = v20[8];
  v53 = v20[9];

  result = sub_1B4F404B4(v52, v53);
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = result;
  }

  if (v22 == 3)
  {

    sub_1B4F651D4();
    sub_1B4F64F34();
LABEL_80:
    a3 = v67;
    sub_1B4EB3438(v19, v67);
    v23 = 0;
    return (*(v15 + 56))(a3, v23, 1, v14);
  }

  v65[0] = v55;
  if (v20[2] < 4uLL)
  {
    goto LABEL_91;
  }

  v56 = v20[10];
  v57 = v20[11];

  v58 = sub_1B4F404B4(v56, v57);
  result = sub_1B4EB2768(v58, v59 & 1);
  v60 = v20[2];
  if (v60 >= 4)
  {
    v70 = v20;
    v71 = (v20 + 4);
    v72 = 4;
    v73 = (2 * v60) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4E21468(&qword_1EB8F6548, &qword_1EB8F6540, &qword_1B4F79998);
    sub_1B4F67F34();

    v61 = v69;
    v62 = v66;
    (*(v69 + 16))(v68, v13, v66);
    sub_1B4F64F34();
    (*(v61 + 8))(v13, v62);
    goto LABEL_80;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_1B4EDB298@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    result = sub_1B4ED9E98();
  }

  else
  {
    result = sub_1B4EDA1E0();
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B4EDB2D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F65244();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4EDB314(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B4E78DA4(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = v1[1];
        v16 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v16 - 16 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B4EDB494(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v3 + 16 * v4 != v9 + 16 * v10 + 32)
  {

LABEL_7:
    v11 = v4;
    goto LABEL_9;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v4, v13);
  v11 = v4 + v13;
  if (v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 < result)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = 2 * v11;
    if (v15 > result)
    {
      result = v15;
    }
  }

  result = sub_1B4EDB314(result);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_39;
  }

  v19 = v1[1] + 16 * v17 + 16 * v18;
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v23 = v18;
    goto LABEL_22;
  }

  v20 = *v1;
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);
  if (v19 != v21 + 16 * v22 + 32)
  {

    goto LABEL_20;
  }

  v24 = *(v21 + 24);

  v25 = (v24 >> 1) - v22;
  v14 = __OFADD__(v18, v25);
  v23 = v18 + v25;
  if (v14)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v26 = v23 - v18;
  if (__OFSUB__(v23, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v27 = *(v5 + 16);
  if (v27)
  {
    if (v26 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = v18 + v6;
      if (!__OFADD__(v18, v6))
      {
        sub_1B4EDB98C(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v26)
  {

    return sub_1B4EDBA44(v5, v27);
  }

  else
  {
  }
}

uint64_t sub_1B4EDB6D4(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v14;
  v34 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_1B4EDBEFC(v7);
  v36 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v32 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v34];
    if (__dst != v23 || __dst >= &v23[16 * v33])
    {
      memmove(__dst, v23, 16 * v33);
    }

    *(v19 + 16);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v32;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v25 = v4[1];
    swift_arrayInitWithCopy();
    result = (a4)(v36 + 16 * a2, a3);
    v26 = v24 + v34;
    if (__OFADD__(v24, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v28 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v20, v29);
  v30 = v20 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_1B4EDB98C(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_1B4F68D74();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

uint64_t sub_1B4EDBA44(uint64_t result, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = result;
  v7 = *(result + 16);
  v36 = v7;
  if (v7 == a2)
  {
LABEL_3:
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = result + 16 * a2;
  v37 = a2 + 1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v30 = v2;
  while (!__OFADD__(v5, 1))
  {
    v38 = sub_1B4EDBD20(v5, v5 + 1, *v2, v2[1], v4, v3);
    v11 = sub_1B4EDBEE0();
    sub_1B4EDB6D4(&v38, v5, 0, v11);

    v4 = v2[2];
    v3 = v2[3];
    v12 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v34 = *v2;
    v35 = v2[1];
    v33 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1B4F68D74();
    swift_unknownObjectRetain();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v13 + 16);
    if (v35 + 16 * v4 + 16 * v12 != v13 + 16 * v14 + 32)
    {

LABEL_16:
      v15 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v16 = *(v13 + 24);

    v17 = (v16 >> 1) - v14;
    v15 = v12 + v17;
    if (__OFADD__(v12, v17))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v15)
    {
      v31 = v3;
      v18 = 0;
      v19 = v6;
      v20 = v4;
      v21 = v37;
      v22 = v6 + 16 * v37;
      v32 = v20;
      v23 = v35 + 16 * v5 + 16 * v20;
      while (1)
      {
        v24 = (v23 + v18);
        *v24 = v10;
        v24[1] = v9;
        ++v5;
        if (v36 == v21)
        {
          v10 = 0;
          v9 = 0;
          v37 = v36;
          goto LABEL_26;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v21 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        ++v21;
        v10 = *(v22 + v18 + 32);
        v9 = *(v22 + v18 + 40);

        v18 += 16;
        if (v15 == v5)
        {
          v37 = v21;
          v5 = v15;
LABEL_26:
          v6 = v19;
          v2 = v30;
          v3 = v31;
          v4 = v32;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v25 = v5 - v12;
    if (__OFSUB__(v5, v12))
    {
      goto LABEL_39;
    }

    if (v25)
    {
      sub_1B4F68D74();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v26 = *(result + 16);
      v27 = __OFADD__(v26, v25);
      v28 = v26 + v25;
      if (v27)
      {
        goto LABEL_40;
      }

      *(result + 16) = v28;

      v29 = v33 + v25;
      if (__OFADD__(v33, v25))
      {
        goto LABEL_41;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v29);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}