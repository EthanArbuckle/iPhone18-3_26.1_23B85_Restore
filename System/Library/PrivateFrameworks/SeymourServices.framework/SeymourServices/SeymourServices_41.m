uint64_t sub_22728B738@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B79D0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3C58;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7A0C;
  v35[1] = v28;
  sub_227669080();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728BCF0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B77F4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3C8C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7830;
  v35[1] = v28;
  sub_2276645D0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728C2A8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B73F4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3CC0;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B7430;
  v35[1] = v28;
  sub_227664220();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728C860@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B7084;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3CF4;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B70C0;
  v35[1] = v28;
  sub_2276642E0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728CE18@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6AB8;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3D28;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6AF4;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728D3DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6EFC;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3D84;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6F38;
  v35[1] = v28;
  sub_227667850();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728D994@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6D90;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3DB8;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6DCC;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728DF58@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD870, &qword_22767E530);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6C24;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3E14;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B6C60;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E8, &qword_22767E538);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728E51C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B6930;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3E70;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B696C;
  v35[1] = v28;
  sub_2276692D0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728EAD4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B65C0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B3EA4;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B65FC;
  v35[1] = v28;
  sub_227666DC0();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728F08C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B60F0;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B81FC;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B81DC;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_22728F650@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B6460;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B4054;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B649C;
  v37[1] = v30;
  sub_2276685B0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22728FBDC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B78D4;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B8214;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B81E0;
  v35[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_2272901A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B7694;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B416C;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B76D0;
  v37[1] = v30;
  sub_227668800();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_22729072C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B7294;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B41A0;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B72D0;
  v37[1] = v30;
  sub_2276684D0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227290CB8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B67D0;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B41D4;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v55 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B680C;
  v37[1] = v30;
  sub_227666DB0();
  v38 = v54;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_227291244@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v61 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v56 - 8);
  v54 = *(v13 + 64);
  v14 = MEMORY[0x28223BE20](v56);
  v53 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v52 = *(v60 - 8);
  v58 = *(v52 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v50 - v19;
  sub_22766BDB0();
  v59 = v4;

  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v51;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  (*(v8 + 16))(v21, v12, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v23;
  v27 = v22;
  (*(v8 + 32))(v26, v21, v22);
  v28 = (v25 + v24);
  *v28 = sub_2272B6274;
  v28[1] = v20;

  v29 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2272B8214;
  *(v30 + 24) = 0;
  v31 = v53;
  v32 = v29;
  v33 = v56;
  (*(v13 + 16))(v53, v29, v56);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = (v54 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v13 + 32))(v36 + v34, v31, v33);
  v37 = (v36 + v35);
  *v37 = sub_2272B62B0;
  v37[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v38 = v55;
  sub_227669270();
  (*(v13 + 8))(v32, v33);
  v39 = v52;
  v40 = v57;
  v41 = v38;
  v42 = v60;
  (*(v52 + 16))(v57, v38, v60);
  v43 = v39;
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v43 + 32))(v46 + v44, v40, v42);
  v47 = (v46 + v45);
  v48 = v59;
  *v47 = sub_226ED4484;
  v47[1] = v48;

  sub_227669270();
  return (*(v43 + 8))(v41, v42);
}

uint64_t sub_2272917DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a1;
  v62 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v13 = *(v57 - 8);
  v53 = *(v13 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v58 = *(v61 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = &v49 - v19;
  *(swift_allocObject() + 16) = v5;
  sub_22766BDB0();
  v55 = v5;
  sub_227669270();
  v20 = swift_allocObject();
  *(v20 + 16) = v52;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v51;
  (*(v8 + 16))(v21, v12, v51);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_2272B528C;
  v26[1] = v20;

  v27 = v50;
  sub_227669270();
  (*(v8 + 8))(v12, v22);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2272B425C;
  *(v28 + 24) = 0;
  v29 = v54;
  v30 = v27;
  v31 = v57;
  (*(v13 + 16))(v54, v27, v57);
  v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v13 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_2272B52C8;
  v35[1] = v28;
  sub_227665030();
  v36 = v56;
  sub_227669270();
  (*(v13 + 8))(v30, v31);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v40 = v59;
  v41 = v61;
  (*(v58 + 16))(v59, v36, v61);
  v42 = v39;
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v42 + 32))(v45 + v43, v40, v41);
  v46 = (v45 + v44);
  *v46 = sub_2272B8408;
  v46[1] = v37;
  v47 = v38;
  sub_227669270();
  return (*(v42 + 8))(v36, v41);
}

uint64_t sub_227291D94(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272924A0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = v71 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v78 = v21;
  MEMORY[0x28223BE20](v22);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v28, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v20, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227292BAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = v71 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v78 = v21;
  MEMORY[0x28223BE20](v22);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v28, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v20, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272932B8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272939C4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272940D0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272947DC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227294EE8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272955F4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227295D00(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729640C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_226ECCE18;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_226ECCE18;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227296B18(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227297224(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227297930(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729803C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227298748(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227298E54(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227299560(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_227299C6C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729A378(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729AA84(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729B190(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729B89C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729BFA8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729C6B4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729CDC0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729D4CC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729DBD8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729E2E4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729E9F0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = v71 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v78 = v21;
  MEMORY[0x28223BE20](v22);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v28, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v20, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729F0FC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729F808(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_22729FF14(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272A0620(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272A0D2C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = v71 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v78 = v21;
  MEMORY[0x28223BE20](v22);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_227216960(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v28, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v20, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_2272A1438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_226EB46D8();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_227669290();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226EB4390;
  *(v12 + 24) = v10;

  v11(sub_226E9F880, v12);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2272A15C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  sub_226EB4120();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_227669290();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226EB4390;
  *(v12 + 24) = v10;

  v11(sub_226E9F880, v12);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2272A1748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B4D84;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B4DC0;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A1C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v55 = *(v4 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  (*(v15 + 16))(&v44 - v18, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v17);
  sub_227669730();
  (*(v15 + 8))(v19, v14);
  v20 = v58;
  v47 = v3;
  v21 = *(v3 + 112);
  v44 = v8;
  sub_2276696A0();
  v49 = *(v9 + 16);
  v45 = v11;
  v22 = v57;
  v49(v11, v50, v57);
  v23 = *(v9 + 80);
  v46 = ((v23 + 16) & ~v23) + v10;
  v50 = (v23 + 16) & ~v23;
  v51 = v9;
  v24 = swift_allocObject();
  v48 = *(v9 + 32);
  v48(v24 + ((v23 + 16) & ~v23), v11, v22);
  v25 = v55;
  v26 = v52;
  v27 = v4;
  (*(v55 + 16))(v52, v8, v4);
  v28 = v25;
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v30 = (v54 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v29, v26, v27);
  v32 = (v31 + v30);
  *v32 = sub_2272B4BFC;
  v32[1] = v24;
  sub_227664420();
  v33 = v53;
  sub_227669270();
  (*(v28 + 8))(v44, v27);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v20;
  *(v35 + 24) = v34;
  v36 = v45;
  v37 = v33;
  v38 = v33;
  v39 = v57;
  v49(v45, v37, v57);
  v40 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v48(v41 + v50, v36, v39);
  v42 = (v41 + v40);
  *v42 = sub_2272B4C38;
  v42[1] = v35;

  sub_227669270();
  (*(v51 + 8))(v38, v39);
}

uint64_t sub_2272A21C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v55 = *(v4 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  (*(v15 + 16))(&v44 - v18, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v17);
  sub_227669730();
  (*(v15 + 8))(v19, v14);
  v20 = v58;
  v47 = v3;
  v21 = *(v3 + 112);
  v44 = v8;
  sub_2276696A0();
  v49 = *(v9 + 16);
  v45 = v11;
  v22 = v57;
  v49(v11, v50, v57);
  v23 = *(v9 + 80);
  v46 = ((v23 + 16) & ~v23) + v10;
  v50 = (v23 + 16) & ~v23;
  v51 = v9;
  v24 = swift_allocObject();
  v48 = *(v9 + 32);
  v48(v24 + ((v23 + 16) & ~v23), v11, v22);
  v25 = v55;
  v26 = v52;
  v27 = v4;
  (*(v55 + 16))(v52, v8, v4);
  v28 = v25;
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v30 = (v54 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v29, v26, v27);
  v32 = (v31 + v30);
  *v32 = sub_2272B4A74;
  v32[1] = v24;
  sub_2276676E0();
  v33 = v53;
  sub_227669270();
  (*(v28 + 8))(v44, v27);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v20;
  *(v35 + 24) = v34;
  v36 = v45;
  v37 = v33;
  v38 = v33;
  v39 = v57;
  v49(v45, v37, v57);
  v40 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v48(v41 + v50, v36, v39);
  v42 = (v41 + v40);
  *v42 = sub_2272B4AB0;
  v42[1] = v35;

  sub_227669270();
  (*(v51 + 8))(v38, v39);
}

uint64_t sub_2272A26F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B472C;
  v31[1] = v23;
  sub_227664700();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B4768;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A2C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7A0, &unk_22767E4D0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v50, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = v9;
  v50 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5BD8;
  v31[1] = v23;
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v50, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5C14;
  v41[1] = v34;

  sub_227669270();
  (*(v49 + 8))(v37, v38);
}

uint64_t sub_2272A3158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v50, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = v9;
  v50 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5B0C;
  v31[1] = v23;
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v50, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5B48;
  v41[1] = v34;

  sub_227669270();
  (*(v49 + 8))(v37, v38);
}

uint64_t sub_2272A3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5804;
  v31[1] = v23;
  sub_227667D20();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5840;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A3BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B567C;
  v31[1] = v23;
  sub_2276631A0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B56B8;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A40F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B54F4;
  v31[1] = v23;
  sub_227664170();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5530;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B3AA0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B3ADC;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A4B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B505C;
  v31[1] = v23;
  sub_227666190();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5098;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A509C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B536C;
  v31[1] = v23;
  sub_227664DC0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B53A8;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A55D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B4EF0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B4F2C;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A5B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B4914;
  v31[1] = v23;
  sub_227667210();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B4950;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A6048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B805C;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B8098;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5F68;
  v31[1] = v23;
  sub_227668CE0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5FA4;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272A6AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B44F0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B4540;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7AB0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E8, &unk_22767E590);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7AEC;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A7548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7B58;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E0, &unk_22767E5A0);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7B94;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A7A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7C00;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7C3C;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A7FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7CA8;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7CE4;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A8514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7D50;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7D8C;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A8A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7DF8;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7E34;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A8F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7EA0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7EDC;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A94E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7F48;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_226EE15F0;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A9A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7FB4;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7FF0;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272A9F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5EC0;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D0, &unk_22767E4E0);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5EFC;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272AA4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5D48;
  v31[1] = v23;
  sub_2276666A0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5D98;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AA9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B5E04;
  v31[1] = v23;
  sub_227666C80();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B5E54;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B7928;
  v31[1] = v23;
  sub_227669080();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7964;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AB448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B774C;
  v31[1] = v23;
  sub_2276645D0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7788;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AB97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B734C;
  v31[1] = v23;
  sub_227664220();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7388;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272ABEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6FDC;
  v31[1] = v23;
  sub_2276642E0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B7018;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AC3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6A10;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B6A4C;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272AC928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6E54;
  v31[1] = v23;
  sub_227667850();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B6E90;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272ACE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6CE8;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B6D24;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272AD3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v52 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD870, &qword_22767E530);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v51 = v9;
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v50;
  v26 = v4;
  (*(v54 + 16))(v50, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6B7C;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E8, &qword_22767E538);
  v32 = v53;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B6BB8;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272AD8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6888;
  v31[1] = v23;
  sub_2276692D0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B68C4;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272ADE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_2272B6518;
  v31[1] = v23;
  sub_227666DC0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_2272B6554;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}