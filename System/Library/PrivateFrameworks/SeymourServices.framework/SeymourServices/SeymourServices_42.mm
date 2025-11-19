uint64_t sub_2272AE34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
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
  *v32 = sub_2272B63B8;
  v32[1] = v24;
  sub_2276685B0();
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
  *v42 = sub_2272B63F4;
  v42[1] = v35;

  sub_227669270();
  (*(v51 + 8))(v38, v39);
}

uint64_t sub_2272AE880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
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
  *v31 = sub_2272B61CC;
  v31[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
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
  *v41 = sub_2272B6208;
  v41[1] = v34;

  sub_227669270();
  (*(v51 + 8))(v37, v38);
}

uint64_t sub_2272AEDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
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
  *v31 = sub_2272B75EC;
  v31[1] = v23;
  sub_227668800();
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
  *v41 = sub_2272B7628;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
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
  *v31 = sub_2272B71EC;
  v31[1] = v23;
  sub_2276684D0();
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
  *v41 = sub_2272B7228;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AF82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
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
  *v31 = sub_2272B6728;
  v31[1] = v23;
  sub_227666DB0();
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
  *v41 = sub_2272B6764;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_2272AFD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
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
  *v32 = sub_2272B51E4;
  v32[1] = v24;
  sub_227665030();
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
  *v42 = sub_2272B5220;
  v42[1] = v35;

  sub_227669270();
  (*(v51 + 8))(v38, v39);
}

uint64_t sub_2272B02B4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227664530();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v32 = *(v34 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B46EC;
  v25[1] = v19;
  sub_227664700();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272A26F4(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B0670@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227666DA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v32 = *(v34 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B48D4;
  v25[1] = v19;
  sub_227667210();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272A5B14(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B0A2C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_227668910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B3A60;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272A4624(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_2272B0DE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_227667D10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B8334;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272A4624(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_2272B1194@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v36 = a3;
  v5 = sub_227668E80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v28 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v33 = *(v35 - 8);
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v35);
  v15 = &v28 - v14;
  v29 = *(v3 + 24);
  v16 = v29;
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v30;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v34;
  v22 = v31;
  v21 = v32;
  v23 = v19;
  (*(v8 + 16))(v31, v19, v32);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v22, v21);
  v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2272B6378;
  v26[1] = v20;
  sub_2276685B0();

  sub_227669270();
  (*(v8 + 8))(v23, v21);
  sub_2272AE34C(v15, v36);
  return (*(v33 + 8))(v15, v35);
}

uint64_t sub_2272B1550@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_2276645D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v32 = *(v34 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B75AC;
  v25[1] = v19;
  sub_227668800();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AEDC4(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B190C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227664220();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v32 = *(v34 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B71AC;
  v25[1] = v19;
  sub_2276684D0();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AF2F8(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B1CC8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_2276692D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v32 = *(v34 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B66E8;
  v25[1] = v19;
  sub_227666DB0();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AF82C(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B2084@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_2276687F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B618C;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272AE880(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_2272B3408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  result = sub_227667720();
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

void sub_2272B346C(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);

  sub_226EB4548(v7, 0);
}

uint64_t sub_2272B3508(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = v5;

  return sub_227669270();
}

void sub_2272B35A0(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4, void *a5)
{
  v6 = a5[1];
  v9[0] = *a5;
  v9[1] = v6;
  a3(v10, v9);
  v7 = v10[0];
  v8 = v10[1];
  v11 = 0;
  a1(v10);

  sub_226EC33EC(v7, v8, 0);
}

uint64_t sub_2272B3644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  result = sub_227667720();
  if (!v2)
  {
    *a2 = v7;
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_2272B374C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_226F62704();

  result = sub_22766C2F0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2272B37B0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, void **), uint64_t a4, void **a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);
  sub_226F38F34(v7, 0);
}

uint64_t sub_2272B38A8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  a2(0);
  sub_226E9ECD0(a3, a4);

  result = sub_22766C2F0();
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_2272B3B7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_227664410();
  v6 = MEMORY[0x277D508B0];
  sub_226E9ECD0(&qword_28139B988, MEMORY[0x277D508B0]);
  sub_226E9ECD0(&qword_28139B998, v6);

  result = sub_22766C5D0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2272B3ED8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);

  return sub_227669270();
}

void sub_2272B3F80(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);
  sub_226F38F34(v6, 0);
}

uint64_t sub_2272B40BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v12[5] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);

  return sub_227669270();
}

uint64_t sub_2272B4208@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2272B5A84(__int128 *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t objectdestroy_9Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_2272B840C(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 name];
  if (!v4)
  {

LABEL_6:
    v8 = sub_227664DD0();
    sub_2272B8934(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51028], v8);
    swift_willThrow();

    return;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 kind];
  if (v6)
  {
    v7 = v6;
    sub_22766C000();
  }

  sub_227663360();
}

size_t static SkillLevel.representativeSamples()()
{
  v25 = sub_2276633A0();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v5 = sub_22766C090();
  v6 = sub_22766CB70();
  v34 = v5;
  v35[0] = v4;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v6;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = v27;
  v29 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226ED3590(0, v8, 0);
    v10 = 0;
    v11 = v26;
    v21 = v0 + 32;
    v22 = v8;
    v12 = (v7 + 72);
    v23 = v7;
    v24 = v0;
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 5);
      v14 = *(v12 - 4);
      v15 = *(v12 - 3);
      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *v12;

      sub_227663360();
      v26 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226ED3590(v19 > 1, v20 + 1, 1);
        v11 = v26;
      }

      ++v10;
      *(v11 + 16) = v20 + 1;
      result = (*(v24 + 32))(v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v3, v25);
      v12 += 6;
      v7 = v23;
      if (v22 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272B88DC(uint64_t a1)
{
  result = sub_2272B8934(&qword_28139BCE8, MEMORY[0x277D4FF18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272B8934(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2272B897C(void *a1)
{
  sub_227663370();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663390();
  v3 = sub_22766BFD0();

  [a1 setName_];

  sub_227663380();
  if (v4)
  {
    v5 = sub_22766BFD0();
  }

  else
  {
    v5 = 0;
  }

  [a1 setKind_];
}

unint64_t static Int64.kilobytes(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 53))
  {
    result <<= 10;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t static Int64.megabytes(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result >> 53)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(result >> 43))
  {
    result <<= 20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2272B8AA8()
{
  result = qword_27D7BC700;
  if (!qword_27D7BC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC700);
  }

  return result;
}

unint64_t sub_2272B8AFC(uint64_t a1)
{
  result = sub_2272B8B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272B8B24()
{
  result = qword_27D7BC708;
  if (!qword_27D7BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC708);
  }

  return result;
}

uint64_t sub_2272B8B78()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1ED90(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1ED90((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2272B8C80@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D10];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2272B8D00@<X0>(void *a1@<X8>)
{
  v2 = sub_227666700();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA060, qword_227677538);
  sub_227663AD0();
  result = sub_226EB2DFC(v2, v4, v6);
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t sub_2272B8D88(uint64_t a1)
{
  *(a1 + 24) = sub_2272B8DF0(&qword_2813A5698);
  result = sub_2272B8DF0(&qword_2813A5690);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272B8DF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666710();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2272B8E48()
{
  result = qword_27D7BC710;
  if (!qword_27D7BC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC710);
  }

  return result;
}

unint64_t sub_2272B8E9C(uint64_t a1)
{
  result = sub_2272B8EC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272B8EC4()
{
  result = qword_27D7BC718;
  if (!qword_27D7BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC718);
  }

  return result;
}

uint64_t sub_2272B8F18()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EEB0(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EEB0((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_2272B9020(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v138 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v121 - v9;
  MEMORY[0x28223BE20](v10);
  v129 = &v121 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v121 - v13;
  v15 = sub_22766AA10();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_22766AA90();
  v134 = *(v17 - 8);
  v135 = v17;
  v18 = *(v134 + 64);
  MEMORY[0x28223BE20](v17);
  v133 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC720, &qword_22767E808);
  v20 = *(sub_22766AA30() - 8);
  v21 = *(v20 + 72);
  v131 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_227670CD0;
  sub_22766AA00();
  sub_22766A9F0();
  v148 = MEMORY[0x277D839B0];
  v136 = a2;
  LOBYTE(v146) = a2;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v22 = [a1 serviceBeginsTimestamp];
  v144 = v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC728, &unk_22767E810);
  v23 = sub_22766CB80();
  v25 = v24;
  v148 = MEMORY[0x277D837D0];

  v146 = v23;
  v147 = v25;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v26 = [a1 subscriptionBundleID];
  v27 = sub_22722DB68();
  v148 = v27;
  v146 = v26;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v28 = [a1 expiryDate];
  if (v28)
  {
    v29 = v28;
    sub_227662710();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_227662750();
  v32 = *(v31 - 8);
  v141 = *(v32 + 56);
  v142 = v31;
  v140 = v32 + 56;
  v141(v14, v30, 1);
  v130 = v5;
  v33 = sub_22766CB80();
  v35 = v34;
  sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
  v36 = MEMORY[0x277D837D0];
  v148 = MEMORY[0x277D837D0];
  v146 = v33;
  v147 = v35;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v37 = [a1 isInGracePeriod];
  v148 = MEMORY[0x277D839B0];
  LOBYTE(v146) = v37;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v38 = [a1 inAppAdamID];
  v148 = v27;
  v146 = v38;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v39 = [a1 initialPurchaseTimestamp];
  v144 = v39;
  v40 = sub_22766CB80();
  v42 = v41;
  v148 = v36;

  v146 = v40;
  v147 = v42;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v43 = [a1 isOfferPeriod];
  v148 = MEMORY[0x277D839B0];
  LOBYTE(v146) = v43;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v44 = [a1 poolType];
  if (v44)
  {
    v45 = v44;
    v46 = sub_22766C000();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v144 = v46;
  v145 = v48;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v49 = sub_22766CB80();
  v51 = v50;
  v148 = v36;

  v146 = v49;
  v147 = v51;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v52 = [a1 promoScenarioID];
  v144 = v52;
  v53 = sub_22766CB80();
  v55 = v54;
  v148 = v36;

  v146 = v53;
  v147 = v55;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v56 = [a1 isPurchaser];
  v148 = MEMORY[0x277D839B0];
  LOBYTE(v146) = v56;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v57 = [a1 startDate];
  if (v57)
  {
    v58 = v129;
    v59 = v57;
    sub_227662710();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v129;
  }

  (v141)(v58, v60, 1, v142);
  v61 = sub_22766CB80();
  v63 = v62;
  sub_226E97D1C(v58, &qword_27D7B9690, qword_227670B50);
  v64 = MEMORY[0x277D837D0];
  v148 = MEMORY[0x277D837D0];
  v146 = v61;
  v147 = v63;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v65 = [a1 entitlementSourceAdamID];
  v144 = v65;
  v66 = sub_22766CB80();
  v68 = v67;
  v148 = v64;

  v146 = v66;
  v147 = v68;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  v130 = "\n    entitlementSourceAdamID: ";
  sub_22766A9F0();
  v69 = [a1 featureAccessTypeID];
  v144 = v69;
  v70 = sub_22766CB80();
  v72 = v71;
  v148 = v64;

  v146 = v70;
  v147 = v72;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v73 = [a1 isTrialPeriod];
  v148 = MEMORY[0x277D839B0];
  LOBYTE(v146) = v73;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v74 = [a1 freeTrialPeriodID];
  v144 = v74;
  v75 = sub_22766CB80();
  v77 = v76;
  v148 = v64;

  v146 = v75;
  v147 = v77;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v78 = [a1 vendorAdHocOfferID];
  if (v78)
  {
    v79 = v78;
    v80 = sub_22766C000();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v144 = v80;
  v145 = v82;
  v83 = sub_22766CB80();
  v85 = v84;
  v86 = MEMORY[0x277D837D0];
  v148 = MEMORY[0x277D837D0];

  v146 = v83;
  v147 = v85;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v87 = [a1 featureAccessTypeID];
  v144 = v87;
  v88 = sub_22766CB80();
  v90 = v89;
  v148 = v86;

  v146 = v88;
  v147 = v90;
  sub_22766A9E0();
  sub_226E97D1C(&v146, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  sub_22766AA20();
  v91 = v133;
  sub_22766AA70();

  (*(v134 + 8))(v91, v135);
  v92 = [a1 serviceBeginsTimestamp];
  v135 = v92;
  if (v92)
  {
    v93 = v92;
    [v92 doubleValue];
    v95 = v94;

    v143 = v95;
  }

  else
  {
    v143 = 0;
  }

  v97 = v138;
  v96 = v139;
  v98 = [a1 initialPurchaseTimestamp];
  v99 = v98;
  if (v98)
  {
    [v98 doubleValue];
    v101 = v100;

    v134 = v101;
  }

  else
  {
    v134 = 0;
  }

  v102 = [a1 promoScenarioID];
  if (v102)
  {
    v132 = sub_22766D330();
  }

  else
  {
    v132 = 0;
  }

  v103 = [a1 entitlementSourceAdamID];
  v133 = v99;
  if (v103)
  {
    v130 = sub_22766D330();
  }

  else
  {
    v130 = 0;
  }

  v104 = [a1 featureAccessTypeID];
  if (v104)
  {
    v129 = sub_22766D330();
  }

  else
  {
    v129 = 0;
  }

  v105 = [a1 freeTrialPeriodID];
  v131 = v102;
  if (v105)
  {
    v126 = sub_22766D330();
  }

  else
  {
    v126 = 0;
  }

  v106 = [a1 subscriptionBundleID];
  v127 = sub_22766D330();

  v107 = [a1 expiryDate];
  if (v107)
  {
    v108 = v107;
    sub_227662710();

    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  (v141)(v96, v109, 1, v142);
  v125 = [a1 isInGracePeriod];
  v110 = [a1 inAppAdamID];
  v124 = sub_22766D330();

  v123 = [a1 isOfferPeriod];
  v111 = [a1 poolType];
  if (v111)
  {
    v112 = v111;
    v122 = sub_22766C000();
    v121 = v113;
  }

  else
  {
    v122 = 0;
    v121 = 0;
  }

  v128 = v104;
  v114 = [a1 productCode];
  if (v114)
  {
    v115 = v114;
    sub_22766C000();
  }

  [a1 isPurchaser];
  v116 = [a1 startDate];
  if (v116)
  {
    v117 = v116;
    sub_227662710();

    v118 = 0;
  }

  else
  {
    v118 = 1;
  }

  (v141)(v97, v118, 1, v142);
  [a1 isTrialPeriod];
  v119 = [a1 vendorAdHocOfferID];
  if (v119)
  {
    v120 = v119;
    sub_22766C000();
  }

  sub_227665AC0();
}

unint64_t sub_2272BA0DC()
{
  result = qword_27D7BC730;
  if (!qword_27D7BC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC730);
  }

  return result;
}

unint64_t sub_2272BA130(uint64_t a1)
{
  result = sub_2272BA158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272BA158()
{
  result = qword_27D7BC738;
  if (!qword_27D7BC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC738);
  }

  return result;
}

uint64_t sub_2272BA1AC()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EE50(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EE50((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2272BA2B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C240, v16);
    _os_log_impl(&dword_226E8E000, v9, v10, "[%{public}s] Failed to load JSStack", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v13 = (*(v5 + 8))(v8, v4);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock);
  MEMORY[0x28223BE20](v13);
  v16[-2] = v2;
  v16[-1] = a1;
  return sub_2276696A0();
}

uint64_t sub_2272BA4C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v16);
    _os_log_impl(&dword_226E8E000, v9, v10, "[%{public}s] Failed to load JSStack", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v13 = (*(v5 + 8))(v8, v4);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock);
  MEMORY[0x28223BE20](v13);
  v16[-2] = v2;
  v16[-1] = a1;
  return sub_2276696A0();
}

id sub_2272BA6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a1;
  v61 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FB0, &unk_227677140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v53 - v6;
  v8 = sub_22766BD90();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B700();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v18 + 8))(v21, v17);
  v22 = dispatch_group_create();
  v60 = v3;
  v23 = sub_226EAB6B8(v22);
  LOBYTE(v18) = v24;

  if (v18)
  {
    *(swift_allocObject() + 16) = v23;
  }

  else
  {
    sub_22766B6F0();
    sub_22766B5E0();
    v54 = 0;
    (*(v13 + 8))(v16, v12);
    v25 = sub_22766BDB0();
    sub_22766BD80();
    v26 = sub_22766BCB0();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    v53[1] = v25;
    v55 = MEMORY[0x22AA98090](v11, v7, 0, 0, v62);
    sub_226E97D1C(v62, &qword_27D7B9FB8, &unk_22767E980);
    sub_226E97D1C(v7, &qword_27D7B9FB0, &unk_227677140);
    (*(v56 + 8))(v11, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FC0, qword_227677150);
    v27 = sub_22766BD30();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    v57 = v31;
    *(v31 + 16) = xmmword_227674070;
    v32 = (v31 + v30);
    v33 = swift_allocObject();
    v34 = v60;
    *(v33 + 16) = v60;
    *v32 = 0xD000000000000015;
    v32[1] = 0x8000000227698060;
    v32[2] = sub_2272BB800;
    v32[3] = v33;
    v35 = *MEMORY[0x277D22450];
    v36 = *(v28 + 104);
    (v36)(v32, v35, v27);
    v37 = (v32 + v29);
    v38 = swift_allocObject();
    *(v38 + 16) = ObjectType;
    *v37 = 0xD000000000000010;
    v37[1] = 0x8000000227698080;
    v37[2] = sub_2272BB918;
    v37[3] = v38;
    v56 = v27;
    (v36)(v32 + v29, v35, v27);
    v39 = (v32 + 2 * v29);
    v40 = *&v34[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration];
    *v39 = 0xD000000000000013;
    v39[1] = 0x80000002276980A0;
    v39[2] = v40;
    v41 = *MEMORY[0x277D22448];
    v36();
    v42 = (v32 + 3 * v29);
    v43 = objc_allocWithZone(type metadata accessor for ScriptStorefrontCache());
    ObjectType = v34;
    v44 = v40;
    v45 = [v43 init];
    *v42 = 0xD000000000000015;
    v42[1] = 0x80000002276980C0;
    v42[2] = v45;
    v46 = v56;
    (v36)(v42, v41, v56);
    v47 = (v32 + 4 * v29);
    v48 = [objc_allocWithZone(type metadata accessor for OfflineScriptBag()) init];
    *v47 = 6775138;
    v47[1] = 0xE300000000000000;
    v47[2] = v48;
    (v36)(v47, v41, v46);
    v49 = (v32 + 5 * v29);
    v50 = [objc_allocWithZone(type metadata accessor for SimulatorNetwork()) init];
    *v49 = 7628142;
    v49[1] = 0xE300000000000000;
    v49[2] = v50;
    (v36)(v49, v41, v46);
    sub_226E91B50(v64, v32 + 6 * v29);
    (v36)(v32 + 6 * v29, *MEMORY[0x277D22460], v46);
    *&v62[0] = v55;
    sub_226EA50A4(v57);
    result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v52 = v54;
    sub_22766BD40();
    if (!v52)
    {
      sub_226EBE3DC();
      sub_2276692A0();

      return __swift_destroy_boxed_opaque_existential_0(v64);
    }

    __swift_destroy_boxed_opaque_existential_0(v64);
    sub_2272BA4C0(v59);
    *(swift_allocObject() + 16) = v52;
  }

  return sub_227669280();
}

id sub_2272BAEBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkScriptLink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NetworkScriptLink()
{
  result = qword_2813A28D0;
  if (!qword_2813A28D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272BB010()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ScriptLinkState();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_2272BB10C()
{
  result = qword_27D7BC740;
  if (!qword_27D7BC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC740);
  }

  return result;
}

void sub_2272BB160(uint64_t a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScriptLinkState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(a1 + v16, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = v5;
    sub_226EA4FC0(v15);
    sub_22766A730();

    v17 = sub_22766B380();
    v18 = sub_22766C8A0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27 = v2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C240, v29);
      *(v20 + 12) = 2082;
      sub_226EA81F8(a1 + v16, v13);
      v22 = sub_22766C060();
      v24 = sub_226E97AE8(v22, v23, v29);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_226E8E000, v17, v18, "[%{public}s] JSStack stack failed to load in unexpected state %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v30 + 8))(v8, v28);
  }

  else
  {
    v25 = *v15;
    v26 = sub_22766B5F0();
    (*(*(v26 - 8) + 16))(v13, a2, v26);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_226EA4F5C(v13, a1 + v16);
    swift_endAccess();
    dispatch_group_leave(v25);
  }
}

void sub_2272BB4B4(void *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScriptLinkState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v28 - v14);
  v16 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(a1 + v16, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v29 = v5;
    sub_226EA4FC0(v15);
    sub_22766A730();
    v17 = a1;
    v18 = sub_22766B380();
    v19 = sub_22766C8A0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v30);
      *(v21 + 12) = 2082;
      sub_226EA81F8(a1 + v16, v13);
      v23 = sub_22766C060();
      v25 = sub_226E97AE8(v23, v24, v30);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v18, v19, "[%{public}s] JSStack stack failed to load in unexpected state %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v31 + 8))(v8, v29);
  }

  else
  {
    v26 = *v15;
    v27 = sub_22766B5F0();
    (*(*(v27 - 8) + 16))(v13, a2, v27);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_226EA4F5C(v13, a1 + v16);
    swift_endAccess();
    dispatch_group_leave(v26);
  }
}

uint64_t sub_2272BB848(uint64_t a1)
{
  v3 = *(sub_22766B5F0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v5;
  v6 = *(v5 + 8);
  v8 = v1 + v4;
  v9 = *(v1 + 16);
  sub_2272BA4C0(v8);
  return v7(a1, 1);
}

unint64_t sub_2272BB944()
{
  result = qword_27D7BC750;
  if (!qword_27D7BC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC750);
  }

  return result;
}

uint64_t SQLiteDatabase.makeHandle(queue:)(void *a1)
{
  v46 = a1;
  v2 = sub_22766B3C0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227662320();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = sub_2276624A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for SQLiteDatabase();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v1;
  sub_226FFF108(v1, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48));
    (*(v14 + 32))(v17, v24, v13);
    v26 = v50;
    v27 = sub_2272BBE14(v17, 0x400000 - (v25 << 20));
    if (v26)
    {
      v20 = v17;
      return (*(v14 + 8))(v20, v13);
    }

    v33 = v27;
    sub_226EA1CF4();
    v35 = v43;
    v34 = v44;
    v36 = v45;
    (*(v44 + 104))(v43, *MEMORY[0x277D851C8], v45);
    v37 = sub_22766C980();
    (*(v34 + 8))(v35, v36);
    (*(v14 + 8))(v17, v13);
    type metadata accessor for SQLiteDatabaseHandle();
    result = swift_allocObject();
    *(result + 16) = v33;
    *(result + 24) = 0;
    *(result + 32) = v37;
  }

  else
  {
    v28 = *v24;
    v29 = v24[1];
    (*(v14 + 56))(v12, 1, 1, v13);
    (*(v47 + 104))(v8, *MEMORY[0x277CC91D8], v48);
    sub_227662480();
    v30 = v50;
    v31 = sub_2272BBE14(v20, 0);
    if (v30)
    {
      return (*(v14 + 8))(v20, v13);
    }

    v38 = v31;
    (*(v14 + 8))(v20, v13);
    type metadata accessor for SQLiteDatabaseHandle();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    v40 = v46;
    *(v39 + 32) = v46;
    v41 = v40;
    return v39;
  }

  return result;
}

sqlite3 *sub_2272BBE14(uint64_t a1, int a2)
{
  v3 = v2;
  ppDb[1] = *MEMORY[0x277D85DE8];
  ppDb[0] = 0;
  v5 = sub_227662460();
  v18 = a2;
  v19 = ppDb;
  v15 = sub_2272BC054;
  v16 = &v17;
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      *filename = v5;
      v13 = v6 & 0xFFFFFFFFFFFFFFLL;
      v7 = filename;
      goto LABEL_6;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v14 = sqlite3_open_v2(v7, ppDb, a2 | 6, 0);
      goto LABEL_7;
    }
  }

  sub_22766CE10();
LABEL_7:

  sub_2273946A4(v14);
  if (!v2)
  {
    v3 = ppDb[0];
    if (ppDb[0])
    {
      v10 = sqlite3_extended_result_codes(ppDb[0], 0);
      sub_2273946A4(v10);
    }

    else
    {
      sub_22706F95C();
      v3 = swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 2;
      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

void *sub_2272BBF9C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = sub_22766CE10();
    if (!v3)
    {
      return HIDWORD(v6);
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = a3(v5, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v3)
      {
        return LODWORD(v5[0]);
      }

      return result;
    }

    goto LABEL_10;
  }

  v5[0] = a1;
  v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  result = a3(&v6, v5);
  if (!v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_2272BC054@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_open_v2(a1, *(v2 + 24), *(v2 + 16) | 6, 0);
  *a2 = result;
  return result;
}

void *sub_2272BC094@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _DWORD *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_2272BC0F0@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t dispatch thunk of APIClientReporting.reportBundleIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E92F34;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2272BC2EC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v3 = *(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  sub_226E97D1C(v0 + 168, &qword_27D7BC758, &qword_22767ED30);
  v4 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedWatchAvailable;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedPhoneAvailable, v5);
  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2272BC430()
{
  sub_2272BC2EC();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AccountDeviceObserver()
{
  result = qword_2813A0828;
  if (!qword_2813A0828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272BC4B0()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2272BC58C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766A8A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 208);
  v17 = sub_2276693C0();
  (*(v12 + 104))(v15, *MEMORY[0x277D4F8C8], v11);
  v18 = sub_226EC9A38(v15, v17);

  result = (*(v12 + 8))(v15, v11);
  if (v18)
  {
    sub_22766A730();
    sub_22766B370();
    (*(v7 + 8))(v10, v6);
    v20 = [objc_opt_self() defaultCenter];
    [v20 addObserver:v1 selector:sel_deviceListChanged name:*MEMORY[0x277CF0010] object:0];

    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v1 selector:sel_deviceListChanged name:*MEMORY[0x277D4FB78] object:0];

    v22 = sub_22766C4B0();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v1;

    sub_2272CA940(0, 0, v5, &unk_22767ED70, v23);
  }

  return result;
}

uint64_t sub_2272BC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2272BC988;

  return sub_2272BCAFC();
}

uint64_t sub_2272BC988()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2272BCA98, v2, 0);
}

uint64_t sub_2272BCA98()
{
  v1 = *(v0 + 16);
  sub_2272BD860();
  sub_2272BDFA0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272BCAFC()
{
  v1[18] = v0;
  v2 = sub_22766B390();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BCBE0, v0, 0);
}

uint64_t sub_2272BCBE0()
{
  sub_2272BF7E8(*(v0 + 144) + 168, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    sub_226E92AB8((v0 + 56), v0 + 16);
    sub_22766A730();
    sub_22766B370();
    v5 = *(v3 + 8);
    *(v0 + 200) = v5;
    *(v0 + 208) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v1, v2);
    v6 = v4[19];
    v7 = v4[20];
    __swift_project_boxed_opaque_existential_0(v4 + 16, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = MEMORY[0x277D84F90];
    *(v0 + 216) = v8;
    if (v8)
    {
      v9 = v8;
    }

    *(v0 + 136) = v9;
    sub_226E91B50(v0 + 16, v0 + 96);
    v10 = swift_allocObject();
    *(v0 + 224) = v10;
    sub_226E92AB8((v0 + 96), v10 + 16);
    v11 = *(MEMORY[0x277D4FA38] + 4);
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC760, &unk_22767ED48);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA208, &qword_227678960);
    v15 = sub_2272BF904();
    *v12 = v0;
    v12[1] = sub_2272BCF00;

    return MEMORY[0x2821AFB18](5, &unk_22767ED40, v10, v13, v14, v15);
  }

  else
  {
    v16 = *(v0 + 176);
    sub_226E97D1C(v0 + 56, &qword_27D7BC758, &qword_22767ED30);
    sub_22766A730();
    v17 = sub_22766B380();
    v18 = sub_22766C890();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 176);
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "Error: Unable to reference Apple ID authentication controller.", v23, 2u);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v27 = *(v0 + 168);
    v26 = *(v0 + 176);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2272BCF00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v11 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = v3[18];
    v6 = sub_2272BD2DC;
  }

  else
  {
    v8 = v3[27];
    v7 = v3[28];
    v9 = v3[18];

    v6 = sub_2272BD044;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_2272BD044()
{
  v1 = v0[30];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_21:
    v16 = v0[23];

    sub_22766A730();

    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v4 + 2);

      _os_log_impl(&dword_226E8E000, v17, v18, "Found %ld supported account devices", v19, 0xCu);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    else
    {
    }

    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[23];
    v24 = v0[18];
    v23 = v0[19];

    v21(v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v25 = *(v24 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
    *(v24 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices) = v4;

    v27 = v0[23];
    v26 = v0[24];
    v29 = v0[21];
    v28 = v0[22];

    v30 = v0[1];

    v30();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_28;
    }

    v9 = *(v1 + 32 + 8 * v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      v4 = sub_2273A5460(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = *(v4 + 2);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_31;
          }

          *(v4 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_29;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v15 = v0[30];
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_2272BD2DC()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[21];

  sub_22766A730();
  v4 = sub_22766B380();
  v5 = sub_22766C890();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[21];
  v11 = v0[19];
  if (v6)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Unexpected error while updating account devices.", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  v9(v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2272BD430(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2272BD458, 0, 0);
}

uint64_t sub_2272BD458()
{
  v1 = [*(v0 + 32) ams_altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [objc_allocWithZone(MEMORY[0x277CF0220]) init];
    *(v0 + 40) = v4;
    [v4 setAltDSID_];

    v5 = sub_22766C2B0();
    [v4 setOperatingSystems_];

    v6 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v6);
    v8 = *(v7 + 16);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    v10[1] = sub_2272BD658;

    return v13(v4, v6, v7);
  }

  else
  {
    **(v0 + 16) = 0;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2272BD658(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_2272BD7F4;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_2272BD784;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2272BD784()
{
  v1 = *(v0 + 56);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272BD7F4()
{
  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_2272BD860()
{
  v65 = sub_22766A020();
  v64 = *(v65 - 8);
  v1 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766B390();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v8)
  {
    return;
  }

  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v7;
  v68 = v5;
  v69 = v0;
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_78:

    v61 = 0;
LABEL_79:
    v46 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch;
    v47 = v69;
    v48 = *(v69 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch);
    v49 = v68;
    v50 = v67;
    v51 = v66;
    if (v48 == 2 || ((v61 ^ v48) & 1) != 0)
    {
      sub_22766A730();
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 67109120;
        *(v54 + 4) = v61;
        _os_log_impl(&dword_226E8E000, v52, v53, "Updating watch found state to: %{BOOL}d", v54, 8u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v50 + 8))(v51, v49);
      *(v47 + v46) = v61;
      v55 = [objc_opt_self() standardUserDefaults];
      v56 = sub_22766BFD0();
      [v55 setBool:v61 forKey:v56];

      if (v61)
      {
        v57 = *(v47 + 112);
        v58 = *(v47 + 120);
        swift_getObjectType();
        v59 = v63;
        sub_22766A010();
        v60 = v65;
        sub_2276699D0();
        (*(v64 + 8))(v59, v60);
      }
    }

    return;
  }

  v10 = 0;
  v62 = &v70 + 1;
  while (v10 < *(v8 + 16))
  {
    v11 = (v8 + 32 + (v10 << 6));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[3];
    v76 = v11[2];
    v77 = v14;
    v75[0] = v12;
    v75[1] = v13;
    v15 = *(&v76 + 1);
    if (!*(&v76 + 1))
    {
      goto LABEL_5;
    }

    v16 = v76;
    v74 = v77;
    v72 = 0x6863746157;
    v73 = 0xE500000000000000;
    sub_2272BF738(v75, &v70);
    sub_226FB2548();
    if ((sub_22766CC00() & 1) == 0)
    {
      sub_2272BF794(v75);
      goto LABEL_5;
    }

    v70 = v16;
    v71 = v15;
    *&v74 = 46;
    *(&v74 + 1) = 0xE100000000000000;
    v17 = sub_22766CBC0();
    if (!v17[2] || ((v19 = v17[4], v18 = v17[5], , , v20 = HIBYTE(v18) & 0xF, v21 = v19 & 0xFFFFFFFFFFFFLL, (v18 & 0x2000000000000000) != 0) ? (v22 = HIBYTE(v18) & 0xF) : (v22 = v19 & 0xFFFFFFFFFFFFLL), !v22))
    {
      sub_2272BF794(v75);

      goto LABEL_5;
    }

    if ((v18 & 0x1000000000000000) == 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v70 = v19;
        v71 = v18 & 0xFFFFFFFFFFFFFFLL;
        if (v19 == 43)
        {
          if (!v20)
          {
            goto LABEL_90;
          }

          if (--v20)
          {
            v25 = 0;
            v35 = v62;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (!v20)
          {
            goto LABEL_89;
          }

          if (--v20)
          {
            v25 = 0;
            v29 = v62;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v31 - v30;
              if (__OFSUB__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v20)
        {
          v25 = 0;
          v40 = &v70;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            v40 = (v40 + 1);
            if (!--v20)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          v23 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_22766CEC0();
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v21 < 1)
          {
            goto LABEL_87;
          }

          v20 = v21 - 1;
          if (v21 != 1)
          {
            v25 = 0;
            if (!v23)
            {
              goto LABEL_63;
            }

            v32 = v23 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v21 < 1)
          {
            goto LABEL_88;
          }

          v20 = v21 - 1;
          if (v21 != 1)
          {
            v25 = 0;
            if (v23)
            {
              v26 = v23 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_71;
                }

                v28 = 10 * v25;
                if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                {
                  goto LABEL_71;
                }

                v25 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  goto LABEL_71;
                }

                ++v26;
                if (!--v20)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v20) = 0;
LABEL_72:
            LOBYTE(v74) = v20;
            v43 = v20;
            sub_2272BF794(v75);

            if (v43)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_71;
          }

          v25 = 0;
          if (!v23)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v38 = *v23 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v25 = 0;
      LOBYTE(v20) = 1;
      goto LABEL_72;
    }

    v25 = sub_2274AD75C(v19, v18, 10);
    v45 = v44;
    sub_2272BF794(v75);

    if (v45)
    {
      goto LABEL_5;
    }

LABEL_73:
    if (v25 > 6)
    {

      v61 = 1;
      goto LABEL_79;
    }

LABEL_5:
    if (++v10 == v9)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

void sub_2272BDFA0()
{
  v65 = sub_22766A020();
  v64 = *(v65 - 8);
  v1 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766B390();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v8)
  {
    return;
  }

  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v7;
  v68 = v5;
  v69 = v0;
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_78:

    v61 = 0;
LABEL_79:
    v46 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone;
    v47 = v69;
    v48 = *(v69 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone);
    v49 = v68;
    v50 = v67;
    v51 = v66;
    if (v48 == 2 || ((v61 ^ v48) & 1) != 0)
    {
      sub_22766A730();
      v52 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 67109120;
        *(v54 + 4) = v61;
        _os_log_impl(&dword_226E8E000, v52, v53, "Updating phone found state to: %{BOOL}d", v54, 8u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v50 + 8))(v51, v49);
      *(v47 + v46) = v61;
      v55 = [objc_opt_self() standardUserDefaults];
      v56 = sub_22766BFD0();
      [v55 setBool:v61 forKey:v56];

      if (v61)
      {
        v57 = *(v47 + 112);
        v58 = *(v47 + 120);
        swift_getObjectType();
        v59 = v63;
        sub_22766A010();
        v60 = v65;
        sub_2276699D0();
        (*(v64 + 8))(v59, v60);
      }
    }

    return;
  }

  v10 = 0;
  v62 = &v70 + 1;
  while (v10 < *(v8 + 16))
  {
    v11 = (v8 + 32 + (v10 << 6));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[3];
    v76 = v11[2];
    v77 = v14;
    v75[0] = v12;
    v75[1] = v13;
    v15 = *(&v76 + 1);
    if (!*(&v76 + 1))
    {
      goto LABEL_5;
    }

    v16 = v76;
    v74 = v77;
    v72 = 0x656E6F685069;
    v73 = 0xE600000000000000;
    sub_2272BF738(v75, &v70);
    sub_226FB2548();
    if ((sub_22766CC00() & 1) == 0)
    {
      sub_2272BF794(v75);
      goto LABEL_5;
    }

    v70 = v16;
    v71 = v15;
    *&v74 = 46;
    *(&v74 + 1) = 0xE100000000000000;
    v17 = sub_22766CBC0();
    if (!v17[2] || ((v19 = v17[4], v18 = v17[5], , , v20 = HIBYTE(v18) & 0xF, v21 = v19 & 0xFFFFFFFFFFFFLL, (v18 & 0x2000000000000000) != 0) ? (v22 = HIBYTE(v18) & 0xF) : (v22 = v19 & 0xFFFFFFFFFFFFLL), !v22))
    {
      sub_2272BF794(v75);

      goto LABEL_5;
    }

    if ((v18 & 0x1000000000000000) == 0)
    {
      if ((v18 & 0x2000000000000000) != 0)
      {
        v70 = v19;
        v71 = v18 & 0xFFFFFFFFFFFFFFLL;
        if (v19 == 43)
        {
          if (!v20)
          {
            goto LABEL_90;
          }

          if (--v20)
          {
            v25 = 0;
            v35 = v62;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (!v20)
          {
            goto LABEL_89;
          }

          if (--v20)
          {
            v25 = 0;
            v29 = v62;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v31 - v30;
              if (__OFSUB__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v20)
        {
          v25 = 0;
          v40 = &v70;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            v40 = (v40 + 1);
            if (!--v20)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          v23 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_22766CEC0();
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v21 < 1)
          {
            goto LABEL_87;
          }

          v20 = v21 - 1;
          if (v21 != 1)
          {
            v25 = 0;
            if (!v23)
            {
              goto LABEL_63;
            }

            v32 = v23 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v25;
              if ((v25 * 10) >> 64 != (10 * v25) >> 63)
              {
                break;
              }

              v25 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v20)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v21 < 1)
          {
            goto LABEL_88;
          }

          v20 = v21 - 1;
          if (v21 != 1)
          {
            v25 = 0;
            if (v23)
            {
              v26 = v23 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_71;
                }

                v28 = 10 * v25;
                if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                {
                  goto LABEL_71;
                }

                v25 = v28 - v27;
                if (__OFSUB__(v28, v27))
                {
                  goto LABEL_71;
                }

                ++v26;
                if (!--v20)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v20) = 0;
LABEL_72:
            LOBYTE(v74) = v20;
            v43 = v20;
            sub_2272BF794(v75);

            if (v43)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_71;
          }

          v25 = 0;
          if (!v23)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v38 = *v23 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v25 = 0;
      LOBYTE(v20) = 1;
      goto LABEL_72;
    }

    v25 = sub_2274AD75C(v19, v18, 10);
    v45 = v44;
    sub_2272BF794(v75);

    if (v45)
    {
      goto LABEL_5;
    }

LABEL_73:
    if (v25 > 13)
    {

      v61 = 1;
      goto LABEL_79;
    }

LABEL_5:
    if (++v10 == v9)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_2272BE6E0()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BE7AC, v0, 0);
}

uint64_t sub_2272BE7AC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 16))(v1, *(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedPhoneAvailable, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 80))
  {
    goto LABEL_2;
  }

  LODWORD(v4) = *(*(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone);
  if (v4 == 2)
  {
    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = sub_22766BFD0();
    v7 = [v5 objectForKey_];

    if (!v7)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
LABEL_2:
      LOBYTE(v4) = 1;
      goto LABEL_6;
    }

    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
    v8 = [v4 standardUserDefaults];
    v9 = sub_22766BFD0();
    LOBYTE(v4) = [v8 BOOLForKey_];
  }

LABEL_6:
  v10 = *(v0 + 72);

  v11 = *(v0 + 8);

  return v11(v4 & 1);
}

uint64_t sub_2272BE9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2272BEA40;

  return sub_2272BCAFC();
}

uint64_t sub_2272BEA40()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2272BEB50, v2, 0);
}

uint64_t sub_2272BEB50()
{
  v1 = *(v0 + 16);
  sub_2272BDFA0();
  sub_2272BD860();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272BECC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_2272BE9AC(a1, v4, v5, v6);
}

uint64_t sub_2272BED74()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BEE40, v0, 0);
}

uint64_t sub_2272BEE40()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 16))(v1, *(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedWatchAvailable, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 80))
  {
    goto LABEL_2;
  }

  LODWORD(v4) = *(*(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch);
  if (v4 == 2)
  {
    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = sub_22766BFD0();
    v7 = [v5 objectForKey_];

    if (!v7)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
LABEL_2:
      LOBYTE(v4) = 1;
      goto LABEL_6;
    }

    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
    v8 = [v4 standardUserDefaults];
    v9 = sub_22766BFD0();
    LOBYTE(v4) = [v8 BOOLForKey_];
  }

LABEL_6:
  v10 = *(v0 + 72);

  v11 = *(v0 + 8);

  return v11(v4 & 1);
}

uint64_t sub_2272BF040()
{
  *(v1 + 208) = v0;
  v2 = swift_task_alloc();
  *(v1 + 216) = v2;
  *v2 = v1;
  v2[1] = sub_2272BF0D0;

  return sub_2272BCAFC();
}

uint64_t sub_2272BF0D0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2272BF1E0, v2, 0);
}

uint64_t sub_2272BF1E0()
{
  v51 = v0;
  v1 = *(v0 + 208);
  v2 = *(v1 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v2)
  {
    v47 = 0;
LABEL_88:
    v48 = *(v0 + 8);

    return v48(v47);
  }

  v3 = *(v2 + 16);
  v4 = *(v1 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);

  if (!v3)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_87:

    v47 = v49;
    goto LABEL_88;
  }

  v6 = 0;
  v49 = MEMORY[0x277D84F90];
  while (v6 < *(v2 + 16))
  {
    v7 = (v2 + 32 + (v6 << 6));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    *(v0 + 48) = v7[2];
    *(v0 + 64) = v10;
    *(v0 + 16) = v8;
    *(v0 + 32) = v9;
    ++v6;
    v11 = *(v0 + 72);
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 152) = v11;
    *(v0 + 160) = 0x6863746157;
    *(v0 + 168) = 0xE500000000000000;
    sub_2272BF738(v0 + 16, v0 + 80);
    sub_226FB2548();
    if (sub_22766CC00())
    {
      goto LABEL_4;
    }

    v12 = *(v0 + 56);
    if (!v12)
    {
      goto LABEL_4;
    }

    *(v0 + 176) = *(v0 + 48);
    *(v0 + 184) = v12;
    *(v0 + 192) = 46;
    *(v0 + 200) = 0xE100000000000000;
    v13 = sub_22766CBC0();
    if (!v13[2] || ((v15 = v13[4], v14 = v13[5], , result = , v16 = HIBYTE(v14) & 0xF, v17 = v15 & 0xFFFFFFFFFFFFLL, (v14 & 0x2000000000000000) != 0) ? (v18 = HIBYTE(v14) & 0xF) : (v18 = v15 & 0xFFFFFFFFFFFFLL), !v18))
    {
      sub_2272BF794(v0 + 16);

      goto LABEL_5;
    }

    if ((v14 & 0x1000000000000000) == 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v50[0] = v15;
        v50[1] = v14 & 0xFFFFFFFFFFFFFFLL;
        if (v15 == 43)
        {
          if (!v16)
          {
            goto LABEL_92;
          }

          if (--v16)
          {
            v20 = 0;
            v30 = v50 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (!v16)
          {
            goto LABEL_93;
          }

          if (--v16)
          {
            v20 = 0;
            v24 = v50 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v16)
        {
          v20 = 0;
          v35 = v50;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v35;
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v15 & 0x1000000000000000) != 0)
        {
          result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_22766CEC0();
        }

        v19 = *result;
        if (v19 == 43)
        {
          if (v17 < 1)
          {
            goto LABEL_94;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v20 = 0;
            if (!result)
            {
              goto LABEL_63;
            }

            v27 = (result + 1);
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (v17 < 1)
          {
            goto LABEL_95;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v20 = 0;
            if (result)
            {
              v21 = (result + 1);
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_71;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_71;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  goto LABEL_71;
                }

                ++v21;
                if (!--v16)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v16) = 0;
LABEL_72:
            v38 = v16;
            goto LABEL_73;
          }
        }

        else
        {
          if (!v17)
          {
            goto LABEL_71;
          }

          v20 = 0;
          if (!result)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v20 = 0;
      LOBYTE(v16) = 1;
      goto LABEL_72;
    }

    v20 = sub_2274AD75C(v15, v14, 10);
    v38 = v46;
LABEL_73:

    if ((v38 & 1) != 0 || v20 <= 15)
    {
LABEL_4:
      result = sub_2272BF794(v0 + 16);
LABEL_5:
      if (v6 == v3)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v39 = v49;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F1FAE8(0, *(v49 + 16) + 1, 1);
        v39 = v49;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_226F1FAE8((v40 > 1), v41 + 1, 1);
        v39 = v49;
      }

      *(v39 + 16) = v41 + 1;
      v49 = v39;
      v42 = (v39 + (v41 << 6));
      v43 = *(v0 + 16);
      v44 = *(v0 + 32);
      v45 = *(v0 + 64);
      v42[4] = *(v0 + 48);
      v42[5] = v45;
      v42[2] = v43;
      v42[3] = v44;
      if (v6 == v3)
      {
        goto LABEL_87;
      }
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_2272BF7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC758, &qword_22767ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272BF858(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2272BD430(a1, a2, v2 + 16);
}

unint64_t sub_2272BF904()
{
  result = qword_27D7BC768;
  if (!qword_27D7BC768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC760, &unk_22767ED48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC768);
  }

  return result;
}

uint64_t sub_2272BF968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_2272BC8F4(a1, v4, v5, v6);
}

void sub_2272BFA1C(void *a1)
{
  v2 = [a1 workoutIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 sessionIdentifier];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227667E30();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2272BFFA4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static SampleContentArchivedSession.representativeSamples()()
{
  v23 = sub_227667E50();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v4 = swift_allocObject();
  v22 = xmmword_227670CD0;
  *(v4 + 16) = xmmword_227670CD0;
  *(v4 + 32) = sub_22766C0A0();
  *(v4 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v22;
  *(v6 + 32) = sub_22766C0A0();
  *(v6 + 40) = v7;
  v29 = v6;
  v30[0] = v4;
  v30[1] = v30;
  v30[2] = &v29;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v28 = v27;
  v25 = sub_2272BFE28();
  v26 = v25;
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    result = sub_226F1FBC8(0, v9, 0);
    v11 = 0;
    v12 = v24;
    v21[1] = v0 + 32;
    *&v22 = v8;
    v13 = (v8 + 56);
    while (v11 < *(v8 + 16))
    {
      v14 = v0;
      v15 = *(v13 - 3);
      v16 = *(v13 - 2);
      v17 = *(v13 - 1);
      v18 = *v13;

      sub_227667E30();
      v24 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F1FBC8(v19 > 1, v20 + 1, 1);
        v12 = v24;
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v0 = v14;
      result = (*(v14 + 32))(v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, v3, v23);
      v13 += 4;
      v8 = v22;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2272BFE28()
{
  result = qword_27D7B8500;
  if (!qword_27D7B8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8500);
  }

  return result;
}

void sub_2272BFEB0(void *a1)
{
  sub_227667E40();
  v2 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_227667E20();
  v3 = sub_22766BFD0();

  [a1 setSessionIdentifier_];
}

uint64_t sub_2272BFF4C(uint64_t a1)
{
  result = sub_2272BFFA4(&qword_2813A55A0, MEMORY[0x277D533B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272BFFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2272BFFEC()
{
  result = sub_226F4A780(&unk_283A918E8);
  qword_2813B20C8 = result;
  return result;
}

uint64_t sub_2272C0014@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CD0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2272C0088()
{
  if (qword_28139B930 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2272C00E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227664A30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2272C010C(uint64_t a1)
{
  *(a1 + 24) = sub_2272C0174(&qword_2813A5790);
  result = sub_2272C0174(&qword_2813A5788);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272C0174(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227664AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2272C01B8()
{
  v0 = sub_227663480();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227669B70();
    sub_2272C0DBC(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2272C02C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  v7 = *(a1 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2273A6A3C(0, v7[2] + 1, 1, v7);
    *(a1 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2273A6A3C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_2272C36BC;
  v11[5] = v6;
  *(a1 + 80) = v7;
  return swift_endAccess();
}

uint64_t sub_2272C03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  v7 = *(a1 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 88) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2273A6A50(0, v7[2] + 1, 1, v7);
    *(a1 + 88) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2273A6A50((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_2272C3684;
  v11[5] = v6;
  *(a1 + 88) = v7;
  return swift_endAccess();
}

void sub_2272C04E4()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  swift_retain_n();
  v7 = sub_22766BFD0();
  v17 = sub_2272C3624;
  v18 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2272C0D54;
  v16 = &block_descriptor_14;
  v8 = _Block_copy(&aBlock);

  v17 = sub_2272C3654;
  v18 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2272C0D54;
  v16 = &block_descriptor_17;
  v9 = _Block_copy(&aBlock);

  v17 = sub_2272C0950;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_226E9D72C;
  v16 = &block_descriptor_20;
  v10 = _Block_copy(&aBlock);

  v17 = sub_2272C0A84;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2272C0D54;
  v16 = &block_descriptor_23;
  v11 = _Block_copy(&aBlock);

  v17 = sub_2272C0BBC;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_226FFCE80;
  v16 = &block_descriptor_26;
  v12 = _Block_copy(&aBlock);

  CacheDeleteRegister();
  _Block_release(v12);
  _Block_release(v11);
  _Block_release(v10);
  _Block_release(v9);
  _Block_release(v8);
}

uint64_t sub_2272C0874(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_22766BEA0();
  }

  a4(a1, 0);

  v6 = sub_22766BE90();

  return v6;
}

uint64_t sub_2272C0950()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "[CacheDelete] Purge Cancel is not supported...", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2272C0A84()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "[CacheDelete] Periodic purge is not supported...", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2272C0BBC(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_226E8E000, v8, v9, "[CacheDelete] Received notifications: %{public}@", v10, 0xCu);
    sub_226E97D1C(v11, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2272C0D54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = v6(a2, v7);

  return v8;
}

uint64_t sub_2272C0DBC(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = sub_22766B390();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  result = sub_2276633F0();
  if ((v19 & 1) == 0 || result != 5)
  {
    return result;
  }

  v42 = v10;
  v20 = *(*__swift_project_boxed_opaque_existential_0((v44 + 32), *(v44 + 56)) + 32);
  sub_2276696A0();
  v22 = v45[0];
  v21 = v45[1];
  if (sub_227663430() == v22 && v23 == v21)
  {

LABEL_7:
    sub_22766A6C0();
    (*(v3 + 16))(v9, a1, v2);
    v25 = sub_22766B380();
    v26 = sub_22766C8B0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45[0] = v28;
      *v27 = 136315138;
      sub_226E9ED18(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
      v29 = sub_22766D140();
      v31 = v30;
      (*(v3 + 8))(v9, v2);
      v32 = sub_226E97AE8(v29, v31, v45);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_226E8E000, v25, v26, "[CacheDelete] Handling completed asset bundle %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA9A450](v28, -1, -1);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    (*(v43 + 8))(v17, v42);
    return sub_2272C1454();
  }

  v24 = sub_22766D190();

  if (v24)
  {
    goto LABEL_7;
  }

  sub_22766A6C0();
  v33 = v3;
  (*(v3 + 16))(v7, a1, v2);
  v34 = sub_22766B380();
  v35 = sub_22766C8B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v36 = 136315138;
    sub_226E9ED18(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
    v38 = sub_22766D140();
    v40 = v39;
    (*(v33 + 8))(v7, v2);
    v41 = sub_226E97AE8(v38, v40, v45);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_226E8E000, v34, v35, "[CacheDelete] Ignoring AssetBundle update because this isn't the downloading device %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AA9A450](v37, -1, -1);
    MEMORY[0x22AA9A450](v36, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v7, v2);
  }

  return (*(v43 + 8))(v14, v42);
}

uint64_t sub_2272C1454()
{
  v1 = sub_22766B3B0();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22766B3F0();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B3C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v10 + 104))(v13, *MEMORY[0x277D851D0], v9);
  v14 = sub_22766C980();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_2272C3390;
  v22 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  sub_22766B3D0();
  v20 = MEMORY[0x277D84F90];
  sub_226E9ED18(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v8, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v1);
  (*(v5 + 8))(v8, v18);
}

void sub_2272C17B0()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC780, &qword_22767EE48);
  inited = swift_initStackObject();
  v18 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000022769C900;
  *(inited + 48) = sub_22766BFD0();
  v6 = sub_22714B234(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BC788, &qword_22767EE50);
  v7 = sub_2272C1B34(3u, v6);

  v8 = swift_initStackObject();
  *(v8 + 32) = 0x45445F4548434143;
  *(v8 + 16) = v18;
  *(v8 + 40) = 0xEF44495F4554454CLL;
  *(v8 + 48) = sub_22766BFD0();
  v9 = sub_22714B234(v8);
  swift_setDeallocating();
  sub_226E97D1C(v8 + 32, &qword_27D7BC788, &qword_22767EE50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v7;
  sub_2272C3398(v9, sub_2272C2B68, 0, isUniquelyReferenced_nonNull_native, &v19);

  v11 = sub_22766BE90();

  sub_22766A6C0();
  v12 = v11;
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_226E8E000, v13, v14, "[CacheDelete] Reporting Usage: %{public}@", v15, 0xCu);
    sub_226E97D1C(v16, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  CacheDeleteUpdatePurgeable();
}

uint64_t sub_2272C1B34(unsigned int a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v77 - v13;
  sub_22766A6C0();

  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  v17 = os_log_type_enabled(v15, v16);
  v80 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v78 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v83[0] = v20;
    *v19 = 136446466;
    LODWORD(v84) = a1;
    type metadata accessor for CacheDeleteUrgency(0);
    v21 = sub_22766C060();
    v23 = sub_226E97AE8(v21, v22, v83);
    v77 = v6;
    v24 = v12;
    v25 = a1;
    v26 = v23;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2082;
    v84 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC778, &unk_22767EE38);
    v27 = sub_22766CB80();
    v29 = sub_226E97AE8(v27, v28, v83);

    *(v19 + 14) = v29;
    a1 = v25;
    v12 = v24;
    _os_log_impl(&dword_226E8E000, v15, v16, "[CacheDelete] Begin Purgeable Block, urgency: %{public}s, info: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v20, -1, -1);
    v30 = v19;
    v5 = v78;
    MEMORY[0x22AA9A450](v30, -1, -1);

    v81 = *(v77 + 8);
  }

  else
  {

    v81 = *(v6 + 8);
  }

  v81(v14, v5);
  v84 = MEMORY[0x277D84F98];
  if (a2)
  {
    if (*(a2 + 16) && (v31 = sub_226E92000(0xD000000000000013, 0x800000022769C900), (v32 & 1) != 0))
    {
      v33 = *(*(a2 + 56) + 8 * v31);
      v34 = swift_unknownObjectRetain();
    }

    else
    {
      v34 = 0;
    }

    sub_227364148(v34, 0xD000000000000013, 0x800000022769C900);
  }

  if (a1 >= 5)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0x201010100uLL >> (8 * a1);
  }

  sub_22766A6C0();
  v36 = sub_22766B380();
  v37 = sub_22766C8B0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v5;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v83[0] = v40;
    *v39 = 136446466;
    LOBYTE(v82) = v35;
    v41 = sub_2272C333C();
    v42 = MEMORY[0x22AA958B0](&type metadata for AssetPurgeUrgency, v41);
    v44 = sub_226E97AE8(v42, v43, v83);
    v78 = v12;
    v45 = a1;
    v46 = v44;

    *(v39 + 4) = v46;
    *(v39 + 12) = 2082;
    LODWORD(v82) = v45;
    type metadata accessor for CacheDeleteUrgency(0);
    v47 = sub_22766C060();
    v49 = sub_226E97AE8(v47, v48, v83);

    *(v39 + 14) = v49;
    _os_log_impl(&dword_226E8E000, v36, v37, "[CacheDelete] beginning purgeable amount request, purgeUrgency: %{public}s, %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v40, -1, -1);
    MEMORY[0x22AA9A450](v39, -1, -1);

    v50 = v78;
    v51 = v38;
    v52 = v38;
  }

  else
  {

    v50 = v12;
    v51 = v5;
    v52 = v5;
  }

  v81(v50, v52);
  v53 = v80;
  swift_beginAccess();
  v54 = *(v53 + 80);
  v55 = *(v54 + 16);

  v57 = 0;
  v58 = (v54 + 40);
  v59 = -v55;
  v60 = -1;
  while (v59 + v60 != -1)
  {
    if (++v60 >= *(v54 + 16))
    {
      __break(1u);
      return result;
    }

    v61 = v58 + 2;
    v63 = *(v58 - 1);
    v62 = *v58;

    v64 = sub_2272C2BB0(v35, v63);

    v58 = v61;
    v65 = __CFADD__(v57, v64);
    v57 += v64;
    if (v65)
    {
      __break(1u);
      break;
    }
  }

  v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v67 = v84;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v67;
  sub_22736B864(v66, 0xD000000000000013, 0x800000022769C8E0, isUniquelyReferenced_nonNull_native);
  v69 = v82;
  v70 = v79;
  sub_22766A6C0();
  v71 = v66;
  v72 = sub_22766B380();
  v73 = sub_22766C8B0();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138543362;
    *(v74 + 4) = v71;
    *v75 = v71;
    v76 = v71;
    _os_log_impl(&dword_226E8E000, v72, v73, "[CacheDelete] End Purgeable Block, returning purgeable amount: %{public}@", v74, 0xCu);
    sub_226E97D1C(v75, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v75, -1, -1);
    MEMORY[0x22AA9A450](v74, -1, -1);
  }

  else
  {
    v76 = v72;
    v72 = v71;
  }

  v81(v70, v51);
  return v69;
}

uint64_t sub_2272C21F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v93 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v92 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v92 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v92 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  sub_22766A6C0();
  sub_22766B370();
  v19 = *(v5 + 8);
  v19(v18, v4);
  sub_22766A6C0();

  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  v22 = os_log_type_enabled(v20, v21);
  v99 = v5 + 8;
  v100 = a2;
  v97 = a1;
  v98 = v19;
  if (!v22)
  {

    v19(v16, v4);
    v34 = v97;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_12:
    v41 = v93;
    sub_22766A6C0();
    v42 = sub_22766B380();
    v43 = sub_22766C8B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_226E8E000, v42, v43, "[CacheDelete] End Purge Block, no purge info received", v44, 2u);
      MEMORY[0x22AA9A450](v44, -1, -1);
    }

    v19(v41, v4);
    return MEMORY[0x277D84F98];
  }

  v95 = v13;
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v103 = v24;
  *v23 = 136446466;
  LODWORD(v102) = a1;
  type metadata accessor for CacheDeleteUrgency(0);
  v25 = sub_22766C060();
  v27 = sub_226E97AE8(v25, v26, &v103);

  *(v23 + 4) = v27;
  v28 = v100;
  *(v23 + 12) = 2082;
  if (!v28)
  {
    sub_22714B234(MEMORY[0x277D84F90]);
  }

  v29 = sub_22766BEC0();
  v31 = v30;

  v32 = v29;
  a2 = v100;
  v33 = sub_226E97AE8(v32, v31, &v103);

  *(v23 + 14) = v33;
  _os_log_impl(&dword_226E8E000, v20, v21, "[CacheDelete] Begin Purge Block, urgency: %{public}s, info: %{public}s", v23, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA9A450](v24, -1, -1);
  MEMORY[0x22AA9A450](v23, -1, -1);

  v19 = v98;
  v98(v16, v4);
  v13 = v95;
  v34 = v97;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_5:
  v35 = *(a2 + 16);
  v93 = "performPurge(urgency:info:)";
  if (v35 && (v36 = sub_226E92000(0xD000000000000013, 0x800000022769C8E0), (v37 & 1) != 0))
  {
    v103 = *(*(a2 + 56) + 8 * v36);
    swift_unknownObjectRetain();
    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = v102;
    }

    else
    {
      v39 = 0;
    }

    v40 = v38 ^ 1;
  }

  else
  {
    v39 = 0;
    v40 = 1;
  }

  if (v34 >= 5)
  {
    v46 = 0;
  }

  else
  {
    v46 = 0x201010100uLL >> (8 * v34);
  }

  sub_22766A6C0();
  v47 = v13;
  v48 = sub_22766B380();
  v49 = sub_22766C8B0();
  v50 = os_log_type_enabled(v48, v49);
  v92 = v4;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v102 = v52;
    v103 = v39;
    *v51 = 136446722;
    LOBYTE(v104) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC70, &qword_2276765B0);
    v95 = v47;
    v53 = sub_22766CB80();
    v55 = sub_226E97AE8(v53, v54, &v102);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2082;
    LOBYTE(v103) = v46;
    v56 = sub_2272C333C();
    v57 = MEMORY[0x22AA958B0](&type metadata for AssetPurgeUrgency, v56);
    v59 = sub_226E97AE8(v57, v58, &v102);

    *(v51 + 14) = v59;
    *(v51 + 22) = 2080;
    v103 = 0;
    v104 = 0xE000000000000000;
    LODWORD(v101) = v97;
    type metadata accessor for CacheDeleteUrgency(0);
    sub_22766CF90();
    v60 = sub_226E97AE8(v103, v104, &v102);

    *(v51 + 24) = v60;
    _os_log_impl(&dword_226E8E000, v48, v49, "[CacheDelete] begin purge request for amount:%{public}s,purgeUrgency:%{public}s,%s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v52, -1, -1);
    MEMORY[0x22AA9A450](v51, -1, -1);

    v98(v95, v4);
  }

  else
  {

    v19(v47, v4);
  }

  v61 = v96;
  swift_beginAccess();
  v62 = *(v61 + 88);
  v63 = *(v62 + 16);

  v65 = 0;
  v66 = (v62 + 40);
  v67 = -v63;
  v68 = -1;
  while (v67 + v68 != -1)
  {
    if (++v68 >= *(v62 + 16))
    {
      __break(1u);
      return result;
    }

    v69 = v66 + 2;
    v71 = *(v66 - 1);
    v70 = *v66;

    v72 = sub_2272C2F6C(v46, v39, v40, v71, v70);

    v66 = v69;
    v73 = __CFADD__(v65, v72);
    v65 += v72;
    if (v73)
    {
      __break(1u);
      break;
    }
  }

  v102 = MEMORY[0x277D84F98];
  v74 = v100;
  if (*(v100 + 16))
  {
    v75 = sub_226E92000(0xD000000000000013, 0x800000022769C900);
    v76 = v93;
    v77 = v94;
    if (v78)
    {
      v79 = *(*(v74 + 56) + 8 * v75);
      v80 = swift_unknownObjectRetain();
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
    v76 = v93;
    v77 = v94;
  }

  sub_227364148(v80, 0xD000000000000013, 0x800000022769C900);
  v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v82 = v102;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = v82;
  sub_22736B864(v81, 0xD000000000000013, v76 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  v45 = v101;
  sub_22766A6C0();
  v84 = v81;
  v85 = sub_22766B380();
  v86 = sub_22766C8B0();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138543362;
    *(v87 + 4) = v84;
    *v88 = v84;
    v89 = v84;
    _os_log_impl(&dword_226E8E000, v85, v86, "[CacheDelete] End Purge Block, returning actual purged amount: %{public}@", v87, 0xCu);
    sub_226E97D1C(v88, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v88, -1, -1);
    MEMORY[0x22AA9A450](v87, -1, -1);
  }

  else
  {
    v89 = v85;
    v85 = v84;
  }

  v90 = v92;
  v91 = v98;

  v91(v77, v90);
  return v45;
}

uint64_t sub_2272C2AE4()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_2272C2B68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_2272C2BB0(char a1, void (*a2)(char *))
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC770, &qword_22767EE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  sub_22766A6C0();
  sub_22766B370();
  v17[0] = *(v11 + 8);
  v17[1] = v10;
  (v17[0])(v15, v10);
  v19 = a1;
  v18(&v19);
  sub_227669950();
  sub_227669940();
  (*(v6 + 8))(v9, v5);
  return v20;
}

uint64_t sub_2272C2F6C(char a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t *), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC770, &qword_22767EE30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v21 - v18;
  sub_22766A6C0();
  sub_22766B370();
  v22 = *(v15 + 8);
  v23 = v14;
  v22(v19, v14);
  v29 = a1;
  v27 = a2;
  v28 = v24 & 1;
  v26(&v29, &v27);
  sub_227669950();
  sub_227669940();
  (*(v10 + 8))(v13, v9);
  return v30;
}

unint64_t sub_2272C333C()
{
  result = qword_28139AAE0;
  if (!qword_28139AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139AAE0);
  }

  return result;
}

uint64_t sub_2272C3398(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    swift_unknownObjectRetain();
    a2(&v45, v48);
    swift_unknownObjectRelease();

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_226E92000(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_226FF437C();
      }
    }

    else
    {
      v30 = v49;
      sub_226FEBAA0(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_226E92000(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2272C3684(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, *(a2 + 8));
}

uint64_t sub_2272C36BC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_2272C3710(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664210();
  v88 = *(v9 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v91 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = v77 - v18;
  MEMORY[0x28223BE20](v17);
  v93 = v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v77 - v22;
  v24 = sub_2276624A0();
  v94 = *(v24 - 8);
  v95 = v24;
  v25 = *(v94 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v90 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v92 = v77 - v28;
  v29 = [a1 identifier];
  if (!v29)
  {
    goto LABEL_10;
  }

  v83 = v13;
  v85 = v8;
  v30 = v29;
  v84 = sub_22766C000();
  v32 = v31;

  v33 = [a1 summary];
  if (!v33)
  {
    goto LABEL_7;
  }

  v86 = v32;
  v34 = v33;
  v82 = sub_22766C000();
  v36 = v35;

  v37 = [a1 abridgedSummary];
  if (!v37)
  {

LABEL_7:

LABEL_10:
    v45 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51028], v45);
    swift_willThrow();

    return;
  }

  v78 = v5;
  v79 = a2;
  v38 = v4;
  v39 = v37;
  v77[1] = sub_22766C000();
  v80 = v40;

  v41 = [a1 sharingURL];
  v81 = v36;
  if (v41)
  {
    v42 = v41;
    sub_22766C000();
  }

  sub_227662310();
  v44 = v94;
  v43 = v95;
  if ((*(v94 + 48))(v23, 1, v95) == 1)
  {

    sub_226E97D1C(v23, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_10;
  }

  v77[0] = v38;
  (*(v44 + 32))(v92, v23, v43);
  v47 = [a1 artwork];
  if (v47)
  {
    v48 = v47;
    sub_227662590();
  }

  v49 = v78;
  v50 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v51 = v87;
  sub_2276683D0();
  if (v51)
  {

    v52 = 0;
  }

  else
  {
    v52 = v97;
  }

  v53 = [a1 preview];
  if (v53)
  {
    sub_226F96E94(v53, v12);
    (*(v50 + 32))(v93, v12, v9);
    v57 = 0;
  }

  else
  {
    v54 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040]);
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D51028], v54);
    swift_willThrow();

    v57 = 1;
  }

  v58 = v93;
  (*(v50 + 56))(v93, v57, 1, v9);
  v59 = v85;
  sub_22766A770();
  v60 = v89;
  sub_226E93170(v58, v89, &qword_27D7B8F00, &unk_227672910);

  v61 = sub_22766B380();
  v62 = sub_22766C8B0();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v97 = v87;
    *v63 = 136315394;
    v96 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7C0, &qword_22767EEB8);
    LODWORD(v78) = v62;
    v64 = sub_22766CB80();
    v66 = sub_226E97AE8(v64, v65, &v97);
    v88 = v52;
    v67 = v66;

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    v68 = sub_22766CB80();
    v70 = v69;
    sub_226E97D1C(v60, &qword_27D7B8F00, &unk_227672910);
    v71 = sub_226E97AE8(v68, v70, &v97);

    *(v63 + 14) = v71;
    _os_log_impl(&dword_226E8E000, v61, v78, "Deserialized %s, %s", v63, 0x16u);
    v72 = v87;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v72, -1, -1);
    MEMORY[0x22AA9A450](v63, -1, -1);
  }

  else
  {

    sub_226E97D1C(v60, &qword_27D7B8F00, &unk_227672910);
  }

  (*(v49 + 8))(v59, v77[0]);
  v73 = v93;
  sub_226E93170(v93, v91, &qword_27D7B8F00, &unk_227672910);
  v74 = v94;
  v75 = v95;
  v76 = v92;
  (*(v94 + 16))(v90, v92, v95);
  sub_227666930();

  sub_226E97D1C(v73, &qword_27D7B8F00, &unk_227672910);
  (*(v74 + 8))(v76, v75);
}

void sub_2272C4068(void *a1, uint64_t a2)
{
  v34 = a2;
  v4 = sub_2276624A0();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  sub_227666910();
  v12 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666970();
  v13 = sub_22766BFD0();

  [a1 setSummary_];

  v36 = sub_227666950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v14 = sub_2276683C0();
  v16 = v15;

  if (!v2)
  {
    v32 = v4;
    v33 = v7;
    v17 = sub_227662560();
    sub_226EDC420(v14, v16);
    [a1 setArtwork_];

    sub_227666960();
    v18 = sub_227664210();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B8F00, &unk_227672910);
      v20 = 0;
      v21 = v33;
LABEL_4:
      [a1 setPreview_];

      sub_227666920();
      sub_227662390();
      (*(v35 + 8))(v21, v32);
      v22 = sub_22766BFD0();

      [a1 setSharingURL_];

      sub_227666940();
      v23 = sub_22766BFD0();

      [a1 setAbridgedSummary_];

      return;
    }

    v31 = v18;
    v24 = objc_opt_self();
    v25 = sub_22766BFD0();
    v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v34];

    type metadata accessor for ManagedCatalogPreview();
    v27 = swift_dynamicCastClass();
    v21 = v33;
    if (v27)
    {
      v20 = v27;
      sub_226F9789C(v27);
      (*(v19 + 8))(v11, v31);
      goto LABEL_4;
    }

    v28 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51000], v28);
    swift_willThrow();
    (*(v19 + 8))(v11, v31);
  }
}

size_t static CatalogModalityMetadata.representativeSamples()()
{
  v49 = sub_2276624A0();
  v51 = *(v49 - 8);
  v0 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v36 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC790, &qword_22767EE58);
  v5 = *(v46 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - v7;
  v44 = sub_227666980();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766C090();
  v12 = sub_22766C090();
  v13 = sub_22766C090();
  sub_227664210();
  sub_2272C4D04(&qword_27D7B9110, MEMORY[0x277D50760]);
  v14 = sub_22766CB70();
  v15 = sub_2276622F0();
  sub_227669180();
  sub_2272C4D04(&qword_27D7B8BE0, MEMORY[0x277D53A78]);
  v16 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  v17 = sub_22766C380();
  v17[2] = 3;
  v17[4] = v16;
  v17[5] = v16;
  v17[6] = v16;
  v69 = v17;
  v70[0] = v13;
  v70[1] = v70;
  v70[2] = &v69;
  v67 = v14;
  v68 = v11;
  v70[3] = &v68;
  v70[4] = &v67;
  v65 = v12;
  v66 = v15;
  v70[5] = &v66;
  v70[6] = &v65;
  swift_bridgeObjectRetain_n();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v59 = v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC798, &qword_22767EE60);
  v61 = v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7A0, &qword_22767EE68);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v64 = v18;
  v19 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v53 = v19;
  v54 = sub_226F5BF60(&qword_27D7BC7A8, &qword_27D7BC798, &qword_22767EE60);
  v55 = v19;
  v56 = sub_226F5BF60(&qword_27D7BC7B0, &qword_27D7BC7A0, &qword_22767EE68);
  v57 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v58 = v19;
  v20 = sub_2276638E0();

  v21 = *(v20 + 16);
  if (v21)
  {
    v52 = MEMORY[0x277D84F90];
    result = sub_226F1F8A8(0, v21, 0);
    v23 = 0;
    v38 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = v52;
    v37 = (v51 + 16);
    v36 = v8 + 32;
    v42 = v5;
    v41 = v8;
    v40 = v20;
    v39 = v21;
    while (v23 < *(v20 + 16))
    {
      v25 = v45;
      sub_226E93170(v38 + *(v5 + 72) * v23, v45, &qword_27D7BC790, &qword_22767EE58);
      v26 = *(v25 + 1);
      v51 = *v25;
      v27 = *(v25 + 2);
      v50 = *(v25 + 3);
      v28 = *(v25 + 4);
      v29 = v46[24];
      v30 = &v25[v46[28]];
      v31 = *v30;
      v32 = v30[1];
      sub_226E93170(&v25[v46[20]], v47, &qword_27D7B8F00, &unk_227672910);
      (*v37)(v48, &v25[v29], v49);

      v33 = v43;
      sub_227666930();
      sub_226E97D1C(v25, &qword_27D7BC790, &qword_22767EE58);
      v52 = v24;
      v35 = *(v24 + 16);
      v34 = *(v24 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_226F1F8A8(v34 > 1, v35 + 1, 1);
        v24 = v52;
      }

      ++v23;
      *(v24 + 16) = v35 + 1;
      result = (*(v41 + 32))(v24 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, v33, v44);
      v5 = v42;
      v20 = v40;
      if (v39 == v23)
      {

        return v24;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272C4CAC(uint64_t a1)
{
  result = sub_2272C4D04(&qword_27D7BC7B8, MEMORY[0x277D52758]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272C4D04(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2272C4D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2272C4DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2272C4E84()
{
  v26 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);

  sub_22766A610();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 328);
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v10 = *(v0 + 272);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 224);
    v14 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v16 = sub_226E97AE8(v14, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to generate First of Modalities templates: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 272);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 304);
  v21 = *(v0 + 288);

  v22 = *(v0 + 8);
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_2272C509C()
{
  v25 = v0;
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);

  sub_22766A610();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 320);
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 224);
    v14 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v16 = sub_226E97AE8(v14, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to generate Lifetime Award of Modalities templates: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 280);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 296);

  v21 = *(v0 + 8);
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t sub_2272C52A4()
{
  v25 = v0;
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);

  sub_22766A610();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 312);
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v10 = *(v0 + 272);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 224);
    v14 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v16 = sub_226E97AE8(v14, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to generate Best of Modalities templates: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v19 = *(v0 + 272);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 288);

  v21 = *(v0 + 8);
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t sub_2272C563C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_22726999C(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_2272C57F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22726C3F4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2272C599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v9 = *(*(v42 - 8) + 64);
  result = MEMORY[0x28223BE20](v42);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v11 + 16;
  v38 = v11;
  v35 = 0;
  v36 = (v11 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      return (*v36)(v24, v23);
    }

    v29 = v27;
    result = (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        return v33(v34, v32, v35, v31);
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2272C5C04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2272C70B8(v9, a2, a3, a4, a5 & 1);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_2272C5CA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2272C7310(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2272C5D44(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2272C599C(result, a2, a3, a4, a5, MEMORY[0x277D531E0], sub_226EB10D0);

    return v10;
  }

  return result;
}

uint64_t sub_2272C5DFC(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_227666FF0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_2272C69B8(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2271171D0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_227117144(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_2271171D0(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_227666F70();
      v38 = v37;
      v39 = sub_227666F70();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22766D190();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_227666F70();
        v53 = v52;
        if (v51 == sub_227666F70() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22766D190();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_2273A4F9C((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_2272C69B8(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_2271171D0(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_227117144(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_227666F70();
    v70 = v69;
    if (v5 == sub_227666F70() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22766D190();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_2272C69B8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_227666FF0();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_227666F70();
            v53 = v52;
            if (v51 != sub_227666F70())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_22766D190();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_227666F70();
        v33 = v32;
        if (v31 == sub_227666F70() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_22766D190();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_2271173B4(&v75, &v74, &v73);
  return 1;
}

unint64_t sub_2272C7054()
{
  result = qword_27D7BC7D8;
  if (!qword_27D7BC7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC7D0, &qword_22767EF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC7D8);
  }

  return result;
}

uint64_t sub_2272C70B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v37 = a5;
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_227666FF0();
  v7 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v38 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v34 = v9 + 16;
  v35 = v9;
  v32 = 0;
  v33 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v39;
LABEL_11:
    (*(v35 + 16))(v11, *(v38 + 48) + *(v35 + 72) * v21, v22);
    v25 = sub_226EB729C(v11, v36, v37 & 1);
    if (v5)
    {
      return (*v33)(v11, v22);
    }

    v26 = v25;
    result = (*v33)(v11, v22);
    if (v26)
    {
      *(v31 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v38;

        return sub_226EBAEF0(v31, v30, v32, v28);
      }
    }
  }

  v23 = v12;
  v22 = v39;
  while (1)
  {
    v12 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v24 = *(v14 + 8 * v12);
    ++v23;
    if (v24)
    {
      v18 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272C7310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v36 = sub_227666FF0();
  v6 = *(*(v36 - 8) + 64);
  result = MEMORY[0x28223BE20](v36);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v35 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v8 + 16;
  v33 = v8;
  v30 = 0;
  v31 = (v8 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v36;
LABEL_11:
    (*(v33 + 16))(v10, *(v35 + 48) + *(v33 + 72) * v20, v21);
    v24 = sub_226EC6D84(v10, v34);
    if (v4)
    {
      return (*v31)(v10, v21);
    }

    v25 = v24;
    result = (*v31)(v10, v21);
    if (v25)
    {
      *(v29 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v35;

        return sub_226EBAEF0(v29, v28, v30, v27);
      }
    }
  }

  v22 = v11;
  v21 = v36;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v23 = *(v13 + 8 * v11);
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272C755C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_22709BF40();
  MEMORY[0x22AA98450](v3);

  MEMORY[0x22AA98450](540945696, 0xE400000000000000);
  v4 = sub_22709BF40();
  MEMORY[0x22AA98450](v4);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0x2870657453;
}

uint64_t sub_2272C7600(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  result = sub_22718CB8C(a5, a6);
  if (result)
  {
    v16[3] = &type metadata for PersistenceHandle;
    v16[4] = &off_283A9AF78;
    v13 = swift_allocObject();
    v16[0] = v13;
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    v14 = a1;
    v15 = a2;

    a7(v16);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t sub_2272C76D0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, id, id))
{
  result = sub_22718CB8C(a5, a6);
  if (result)
  {
    v16[3] = &type metadata for PersistenceHandle;
    v16[4] = &off_283A9AF78;
    v13 = swift_allocObject();
    v16[0] = v13;
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    v14 = a1;
    v15 = a2;

    a7(v16, v14, v15);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

void sub_2272C77B0(void *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v6 = a4;
  v534[31] = *MEMORY[0x277D85DE8];
  v9 = BYTE1(a4);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v521 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2275E0808(v9, 51);
  v528 = v10;
  v529 = v14;
  v530 = v11;
  v527 = v6;
  v526 = a3;
  v532 = a1;
  if (!v15)
  {
    LODWORD(v525) = v9;
    v531 = v4;
    v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[3];
    v28 = *(v24 + 16);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9000, &qword_227672BB8);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    v33 = v25;
    v34 = v26;

    sub_22766A070();
    *(v32 + 16) = v33;
    *(v32 + 24) = v34;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    v35 = qword_2813B2078;
    swift_beginAccess();
    v36 = sub_227542E38(v32 + v35, v28, v27);
    if (v36)
    {
      if (v36 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v190 = v531;
      v191 = sub_2272462A0(0);
      if (v190)
      {
        goto LABEL_103;
      }

      v192 = v191;
      [v191 setResultType_];
      sub_226ED9864();
      v193 = sub_22766C9E0();
      v531 = 0;
      v194 = sub_226EDAB24(v193);

      sub_226EDAB78(v194, v34);
    }

    v37 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[3];
    v41 = *(v37 + 16);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9018, &unk_22767F020);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v45 = swift_allocObject();
    v46 = v38;
    v47 = v39;

    sub_22766A070();
    *(v45 + 16) = v46;
    *(v45 + 24) = v47;
    *(v45 + 32) = v41;
    *(v45 + 40) = v40;
    v48 = qword_2813B2078;
    swift_beginAccess();
    v49 = sub_227542CF8(v45 + v48, v41, v40);
    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v237 = v531;
      v238 = sub_227244EA0(0);
      if (v237)
      {
        goto LABEL_103;
      }

      v239 = v238;
      [v238 setResultType_];
      sub_226ED9864();
      v240 = sub_22766C9E0();
      v531 = 0;
      v241 = sub_226EDAB24(v240);

      sub_226EDAB78(v241, v47);
    }

    v50 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[3];
    v54 = *(v50 + 16);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9030, &unk_227672BF0);
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    v58 = swift_allocObject();
    v59 = v51;
    v60 = v52;

    sub_22766A070();
    *(v58 + 16) = v59;
    *(v58 + 24) = v60;
    *(v58 + 32) = v54;
    *(v58 + 40) = v53;
    v61 = qword_2813B2078;
    swift_beginAccess();
    v62 = sub_227542C90(v58 + v61, v54, v53);
    if (v62)
    {
      if (v62 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v265 = v531;
      v266 = sub_2272444A0(0);
      if (v265)
      {
        goto LABEL_103;
      }

      v267 = v266;
      [v266 setResultType_];
      sub_226ED9864();
      v268 = sub_22766C9E0();
      v531 = 0;
      v269 = sub_226EDAB24(v268);

      sub_226EDAB78(v269, v60);
    }

    v63 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[3];
    v67 = *(v63 + 16);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9038, &unk_22767F030);
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    v71 = swift_allocObject();
    v72 = v64;
    v73 = v65;

    sub_22766A070();
    *(v71 + 16) = v72;
    *(v71 + 24) = v73;
    *(v71 + 32) = v67;
    *(v71 + 40) = v66;
    v74 = qword_2813B2078;
    swift_beginAccess();
    v75 = sub_227542C28(v71 + v74, v67, v66);
    if (v75)
    {
      if (v75 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v294 = v531;
      v295 = sub_227243AA0(0);
      if (v294)
      {
        goto LABEL_103;
      }

      v296 = v295;
      [v295 setResultType_];
      sub_226ED9864();
      v297 = sub_22766C9E0();
      v531 = 0;
      v298 = sub_226EDAB24(v297);

      sub_226EDAB78(v298, v73);
    }

    v76 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v77 = *v76;
    v78 = v76[1];
    v79 = v76[3];
    v80 = *(v76 + 16);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9040, &unk_227672C00);
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    v84 = swift_allocObject();
    v85 = v77;
    v86 = v78;

    sub_22766A070();
    *(v84 + 16) = v85;
    *(v84 + 24) = v86;
    *(v84 + 32) = v80;
    *(v84 + 40) = v79;
    v87 = qword_2813B2078;
    swift_beginAccess();
    v88 = sub_227542C08(v84 + v87, v80, v79);
    if (v88)
    {
      if (v88 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v317 = v531;
      v318 = sub_2272435A0(0);
      if (v317)
      {
        goto LABEL_103;
      }

      v319 = v318;
      [v318 setResultType_];
      sub_226ED9864();
      v320 = sub_22766C9E0();
      v531 = 0;
      v321 = sub_226EDAB24(v320);

      sub_226EDAB78(v321, v86);
    }

    v89 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v90 = *v89;
    v91 = v89[1];
    v92 = v89[3];
    v93 = *(v89 + 16);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9048, &unk_22767F040);
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    v97 = swift_allocObject();
    v98 = v90;
    v99 = v91;

    sub_22766A070();
    *(v97 + 16) = v98;
    *(v97 + 24) = v99;
    *(v97 + 32) = v93;
    *(v97 + 40) = v92;
    v100 = qword_2813B2078;
    swift_beginAccess();
    v101 = sub_227542BA0(v97 + v100, v93, v92);
    if (v101)
    {
      if (v101 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v391 = v531;
      v392 = sub_2272430A0(0);
      if (v391)
      {
        goto LABEL_103;
      }

      v393 = v392;
      [v392 setResultType_];
      sub_226ED9864();
      v394 = sub_22766C9E0();
      v531 = 0;
      v395 = sub_226EDAB24(v394);

      sub_226EDAB78(v395, v99);
    }

    v102 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v103 = *v102;
    v104 = v102[1];
    v105 = v102[3];
    v106 = *(v102 + 16);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9050, &unk_227672C10);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    v110 = swift_allocObject();
    v111 = v103;
    v112 = v104;

    sub_22766A070();
    *(v110 + 16) = v111;
    *(v110 + 24) = v112;
    *(v110 + 32) = v106;
    *(v110 + 40) = v105;
    v113 = qword_2813B2078;
    swift_beginAccess();
    v114 = sub_227542B38(v110 + v113, v106, v105);
    if (v114)
    {
      if (v114 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v396 = v531;
      v397 = sub_227242BA0(0);
      if (v396)
      {
        goto LABEL_103;
      }

      v398 = v397;
      [v397 setResultType_];
      sub_226ED9864();
      v399 = sub_22766C9E0();
      v531 = 0;
      v410 = sub_226EDAB24(v399);

      sub_226EDAB78(v410, v112);
    }

    v115 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v116 = *v115;
    v117 = v115[1];
    v118 = v115[3];
    v119 = *(v115 + 16);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9058, &unk_22767F050);
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    v123 = swift_allocObject();
    v124 = v116;
    v125 = v117;

    sub_22766A070();
    *(v123 + 16) = v124;
    *(v123 + 24) = v125;
    *(v123 + 32) = v119;
    *(v123 + 40) = v118;
    v126 = qword_2813B2078;
    swift_beginAccess();
    v127 = sub_227542B18(v123 + v126, v119, v118);
    if (v127)
    {
      if (v127 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v401 = v531;
      v402 = sub_2272426A0(0);
      if (v401)
      {
        goto LABEL_103;
      }

      v403 = v402;
      [v402 setResultType_];
      sub_226ED9864();
      v404 = sub_22766C9E0();
      v531 = 0;
      v405 = sub_226EDAB24(v404);

      sub_226EDAB78(v405, v125);
    }

    v128 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v129 = *v128;
    v130 = v128[1];
    v131 = v128[3];
    v132 = *(v128 + 16);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9060, qword_227672C20);
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    v136 = swift_allocObject();
    v137 = v129;
    v138 = v130;

    sub_22766A070();
    *(v136 + 16) = v137;
    *(v136 + 24) = v138;
    *(v136 + 32) = v132;
    *(v136 + 40) = v131;
    v139 = qword_2813B2078;
    swift_beginAccess();
    v140 = sub_227542A28(v136 + v139, v132, v131);
    if (v140)
    {
      if (v140 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v406 = v531;
      v407 = sub_2272421A0(0);
      if (v406)
      {
        goto LABEL_103;
      }

      v408 = v407;
      [v407 setResultType_];
      sub_226ED9864();
      v409 = sub_22766C9E0();
      v531 = 0;
      v517 = sub_226EDAB24(v409);

      sub_226EDAB78(v517, v138);
    }

    v141 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v142 = *v141;
    v143 = v141[1];
    v144 = v141[3];
    v145 = *(v141 + 16);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF8, &unk_22767F060);
    v147 = *(v146 + 48);
    v148 = *(v146 + 52);
    v149 = swift_allocObject();
    v150 = v142;
    v151 = v143;

    sub_22766A070();
    *(v149 + 16) = v150;
    *(v149 + 24) = v151;
    *(v149 + 32) = v145;
    *(v149 + 40) = v144;
    v152 = qword_2813B2078;
    swift_beginAccess();
    v153 = sub_227542A08(v149 + v152, v145, v144);
    if (!v153)
    {
      v411 = v531;
      v412 = sub_22728479C(0);
      v5 = v411;
      if (!v411)
      {
        v514 = v412;
        [v412 setResultType_];
        sub_226ED9864();
        v515 = sub_22766C9E0();
        v516 = sub_226EDAB24(v515);

        sub_226EDAB78(v516, v151);

        goto LABEL_37;
      }

LABEL_103:

      goto LABEL_104;
    }

    if (v153 == 1)
    {

      v5 = v531;
LABEL_37:
      v10 = v528;
      v14 = v529;
      v11 = v530;
      BYTE1(v6) = BYTE1(v527);
      a1 = v532;
      v9 = v525;
      goto LABEL_2;
    }

LABEL_38:
    swift_willThrow();
    goto LABEL_103;
  }

LABEL_2:
  if (!sub_2275E0808(v9, 39))
  {
    LODWORD(v525) = v9;
    v154 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v155 = *v154;
    v156 = v154[1];
    v157 = *(v154 + 16);
    v158 = v154[3];
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
    v160 = *(v159 + 48);
    v161 = *(v159 + 52);
    v162 = swift_allocObject();
    v163 = v155;
    v164 = v156;

    sub_22766A070();
    *(v162 + 16) = v163;
    *(v162 + 24) = v164;
    *(v162 + 32) = v157;
    *(v162 + 40) = v158;
    v165 = sub_227284934(0);
    if (v5)
    {
      goto LABEL_51;
    }

    v166 = v165;
    v531 = 0;
    v167 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v167 setResultType_];
    v534[0] = 0;
    v168 = [v164 executeRequest:v167 error:v534];
    v169 = v534[0];
    if (!v168)
    {
      goto LABEL_60;
    }

    v170 = v168;
    v171 = v534[0];

    swift_setDeallocating();
    v172 = qword_2813B2078;
    v173 = sub_22766A100();
    v174 = (*(v173 - 8) + 8);
    v524 = *v174;
    v524(v162 + v172, v173);
    v175 = *(*v162 + 48);
    v176 = *(*v162 + 52);
    swift_deallocClassInstance();
    v177 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
    v178 = *v177;
    v179 = v177[1];
    LOBYTE(v170) = *(v177 + 16);
    v180 = v177[3];
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
    v182 = *(v181 + 48);
    v183 = *(v181 + 52);
    v162 = swift_allocObject();
    v184 = v178;
    v185 = v179;

    sub_22766A070();
    *(v162 + 16) = v184;
    *(v162 + 24) = v185;
    *(v162 + 32) = v170;
    *(v162 + 40) = v180;
    v186 = v531;
    v187 = sub_22728476C(0);
    if (v186)
    {

      swift_setDeallocating();
      v188 = v162 + qword_2813B2078;
      v189 = v173;
LABEL_43:
      v524(v188, v189);
LABEL_53:
      v235 = *(*v162 + 48);
      v236 = *(*v162 + 52);
      swift_deallocClassInstance();
      goto LABEL_104;
    }

    v522 = v174;
    v523 = v173;
    v531 = 0;
    v270 = v187;
    v271 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v271 setResultType_];
    v534[0] = 0;
    v272 = [v185 executeRequest:v271 error:v534];
    if (!v272)
    {
      v299 = v534[0];
      sub_2276622C0();

      swift_willThrow();

      swift_setDeallocating();
      v524(v162 + qword_2813B2078, v523);
      goto LABEL_53;
    }

    v273 = v272;
    v274 = v534[0];

    swift_setDeallocating();
    v524(v162 + qword_2813B2078, v523);
    v275 = *(*v162 + 48);
    v276 = *(*v162 + 52);
    swift_deallocClassInstance();
    v11 = v530;
    v5 = v531;
    v10 = v528;
    v14 = v529;
    BYTE1(v6) = BYTE1(v527);
    a1 = v532;
    v9 = v525;
  }

  if (sub_2275E0808(v9, 12))
  {
    goto LABEL_4;
  }

  LODWORD(v525) = v9;
  v195 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v196 = *v195;
  v197 = v195[1];
  v198 = *(v195 + 16);
  v199 = v195[3];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v201 = *(v200 + 48);
  v202 = *(v200 + 52);
  v162 = swift_allocObject();
  v163 = v196;
  v164 = v197;

  sub_22766A070();
  *(v162 + 16) = v163;
  *(v162 + 24) = v164;
  *(v162 + 32) = v198;
  *(v162 + 40) = v199;
  v203 = sub_22728491C(0);
  if (v5)
  {
LABEL_51:

LABEL_52:
    swift_setDeallocating();
    v233 = qword_2813B2078;
    v234 = sub_22766A100();
    (*(*(v234 - 8) + 8))(v162 + v233, v234);
    goto LABEL_53;
  }

  v166 = v203;
  v531 = 0;
  v167 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v167 setResultType_];
  v534[0] = 0;
  v204 = [v164 executeRequest:v167 error:v534];
  v169 = v534[0];
  if (!v204)
  {
    goto LABEL_60;
  }

  v205 = v204;
  v206 = v534[0];

  swift_setDeallocating();
  v207 = qword_2813B2078;
  v208 = sub_22766A100();
  v209 = *(v208 - 8);
  v210 = *(v209 + 8);
  v523 = v209 + 8;
  v524 = v210;
  v210(v162 + v207, v208);
  v211 = *(*v162 + 48);
  v212 = *(*v162 + 52);
  swift_deallocClassInstance();
  v213 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
  v214 = *v213;
  v215 = v213[1];
  LOBYTE(v205) = *(v213 + 16);
  v216 = v213[3];
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v218 = *(v217 + 48);
  v219 = *(v217 + 52);
  v162 = swift_allocObject();
  v220 = v214;
  v221 = v215;

  sub_22766A070();
  *(v162 + 16) = v220;
  *(v162 + 24) = v221;
  *(v162 + 32) = v205;
  *(v162 + 40) = v216;
  v222 = v531;
  v223 = sub_227284904(0);
  if (v222)
  {

    swift_setDeallocating();
    v188 = v162 + qword_2813B2078;
    v189 = v208;
    goto LABEL_43;
  }

  v277 = v223;
  v522 = v208;
  v531 = 0;
  v278 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v278 setResultType_];
  v534[0] = 0;
  v279 = [v221 executeRequest:v278 error:v534];
  v280 = v534[0];
  if (!v279)
  {
    goto LABEL_80;
  }

  v281 = v279;
  v282 = v534[0];

  swift_setDeallocating();
  v524(v162 + qword_2813B2078, v522);
  v283 = *(*v162 + 48);
  v284 = *(*v162 + 52);
  swift_deallocClassInstance();
  v285 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
  v286 = *v285;
  v287 = v285[1];
  LOBYTE(v281) = *(v285 + 16);
  v288 = v285[3];
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v290 = *(v289 + 48);
  v291 = *(v289 + 52);
  v162 = swift_allocObject();
  v220 = v286;
  v221 = v287;

  sub_22766A070();
  *(v162 + 16) = v220;
  *(v162 + 24) = v221;
  *(v162 + 32) = v281;
  *(v162 + 40) = v288;
  v292 = v531;
  v293 = sub_2272848EC(0);
  if (v292)
  {
LABEL_67:

    swift_setDeallocating();
    v188 = v162 + qword_2813B2078;
    v189 = v522;
    goto LABEL_43;
  }

  v277 = v293;
  v531 = 0;
  v278 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v278 setResultType_];
  v534[0] = 0;
  v322 = [v221 executeRequest:v278 error:v534];
  v280 = v534[0];
  if (!v322)
  {
LABEL_80:
    v343 = v280;
    sub_2276622C0();

    swift_willThrow();

LABEL_81:
    swift_setDeallocating();
    v188 = v162 + qword_2813B2078;
    v189 = v522;
    goto LABEL_43;
  }

  v323 = v322;
  v324 = v534[0];

  swift_setDeallocating();
  v524(v162 + qword_2813B2078, v522);
  v325 = *(*v162 + 48);
  v326 = *(*v162 + 52);
  swift_deallocClassInstance();
  v327 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
  v328 = *v327;
  v329 = v327[1];
  LOBYTE(v323) = *(v327 + 16);
  v330 = v327[3];
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v332 = *(v331 + 48);
  v333 = *(v331 + 52);
  v162 = swift_allocObject();
  v220 = v328;
  v221 = v329;

  sub_22766A070();
  *(v162 + 16) = v220;
  *(v162 + 24) = v221;
  *(v162 + 32) = v323;
  *(v162 + 40) = v330;
  v334 = v531;
  v335 = sub_2272848D4(0);
  if (v334)
  {
    goto LABEL_67;
  }

  v531 = 0;
  v336 = v335;
  v337 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v337 setResultType_];
  v534[0] = 0;
  v338 = [v221 executeRequest:v337 error:v534];
  if (!v338)
  {
    v400 = v534[0];
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_81;
  }

  v339 = v338;
  v340 = v534[0];

  swift_setDeallocating();
  v524(v162 + qword_2813B2078, v522);
  v341 = *(*v162 + 48);
  v342 = *(*v162 + 52);
  swift_deallocClassInstance();
  v11 = v530;
  v5 = v531;
  v10 = v528;
  v14 = v529;
  BYTE1(v6) = BYTE1(v527);
  a1 = v532;
  LOBYTE(v9) = v525;
LABEL_4:
  if (!sub_2275E0808(v9, 0))
  {
    v224 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v225 = *v224;
    v226 = v224[1];
    v227 = *(v224 + 16);
    v228 = v224[3];
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
    v230 = *(v229 + 48);
    v231 = *(v229 + 52);
    v162 = swift_allocObject();
    v163 = v225;
    v164 = v226;

    sub_22766A070();
    *(v162 + 16) = v163;
    *(v162 + 24) = v164;
    *(v162 + 32) = v227;
    *(v162 + 40) = v228;
    v232 = sub_2272848BC(0);
    if (v5)
    {
      goto LABEL_51;
    }

    v166 = v232;
    v531 = 0;
    v167 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v167 setResultType_];
    v534[0] = 0;
    v242 = [v164 executeRequest:v167 error:v534];
    v169 = v534[0];
    if (v242)
    {
      v243 = v242;
      v244 = v534[0];

      swift_setDeallocating();
      v245 = qword_2813B2078;
      v246 = sub_22766A100();
      v247 = *(v246 - 8);
      v248 = *(v247 + 8);
      v524 = (v247 + 8);
      v525 = v248;
      v248(v162 + v245, v246);
      v249 = *(*v162 + 48);
      v250 = *(*v162 + 52);
      swift_deallocClassInstance();
      v251 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
      v252 = *v251;
      v253 = v251[1];
      LOBYTE(v243) = *(v251 + 16);
      v254 = v251[3];
      v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
      v256 = *(v255 + 48);
      v257 = *(v255 + 52);
      v162 = swift_allocObject();
      v258 = v252;
      v259 = v253;

      sub_22766A070();
      *(v162 + 16) = v258;
      *(v162 + 24) = v259;
      *(v162 + 32) = v243;
      *(v162 + 40) = v254;
      v260 = v531;
      v261 = sub_2272848A4(0);
      if (v260)
      {

        swift_setDeallocating();
        v262 = v162 + qword_2813B2078;
        v263 = v246;
LABEL_92:
        v525(v262, v263);
        goto LABEL_53;
      }

      v300 = v261;
      v523 = v246;
      v531 = 0;
      v301 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
      [v301 setResultType_];
      v534[0] = 0;
      v302 = [v259 executeRequest:v301 error:v534];
      v303 = v534[0];
      if (!v302)
      {
        goto LABEL_89;
      }

      v304 = v302;
      v305 = v534[0];

      swift_setDeallocating();
      v525(v162 + qword_2813B2078, v523);
      v306 = *(*v162 + 48);
      v307 = *(*v162 + 52);
      swift_deallocClassInstance();
      v308 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
      v309 = *v308;
      v310 = v308[1];
      LOBYTE(v304) = *(v308 + 16);
      v311 = v308[3];
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
      v313 = *(v312 + 48);
      v314 = *(v312 + 52);
      v162 = swift_allocObject();
      v258 = v309;
      v259 = v310;

      sub_22766A070();
      *(v162 + 16) = v258;
      *(v162 + 24) = v259;
      *(v162 + 32) = v304;
      *(v162 + 40) = v311;
      v315 = v531;
      v316 = sub_227284724(0);
      if (v315)
      {
LABEL_73:

        swift_setDeallocating();
        v525(v162 + qword_2813B2078, v523);
        goto LABEL_53;
      }

      v300 = v316;
      v531 = 0;
      v301 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
      [v301 setResultType_];
      v534[0] = 0;
      v344 = [v259 executeRequest:v301 error:v534];
      v303 = v534[0];
      if (!v344)
      {
        goto LABEL_89;
      }

      v345 = v344;
      v346 = v534[0];

      swift_setDeallocating();
      v525(v162 + qword_2813B2078, v523);
      v347 = *(*v162 + 48);
      v348 = *(*v162 + 52);
      swift_deallocClassInstance();
      v349 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
      v350 = *v349;
      v351 = v349[1];
      LOBYTE(v345) = *(v349 + 16);
      v352 = v349[3];
      v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
      v354 = *(v353 + 48);
      v355 = *(v353 + 52);
      v162 = swift_allocObject();
      v258 = v350;
      v259 = v351;

      sub_22766A070();
      *(v162 + 16) = v258;
      *(v162 + 24) = v259;
      *(v162 + 32) = v345;
      *(v162 + 40) = v352;
      v356 = v531;
      v357 = sub_22728473C(0);
      if (v356)
      {
        goto LABEL_73;
      }

      v300 = v357;
      v531 = 0;
      v301 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
      [v301 setResultType_];
      v534[0] = 0;
      v358 = [v259 executeRequest:v301 error:v534];
      v303 = v534[0];
      if (!v358)
      {
        goto LABEL_89;
      }

      v359 = v358;
      v360 = v534[0];

      swift_setDeallocating();
      v525(v162 + qword_2813B2078, v523);
      v361 = *(*v162 + 48);
      v362 = *(*v162 + 52);
      swift_deallocClassInstance();
      v363 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
      v364 = *v363;
      v365 = v363[1];
      LOBYTE(v359) = *(v363 + 16);
      v366 = v363[3];
      v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
      v368 = *(v367 + 48);
      v369 = *(v367 + 52);
      v162 = swift_allocObject();
      v258 = v364;
      v259 = v365;

      sub_22766A070();
      *(v162 + 16) = v258;
      *(v162 + 24) = v259;
      *(v162 + 32) = v359;
      *(v162 + 40) = v366;
      v370 = v531;
      v371 = sub_227284784(0);
      if (v370)
      {
        goto LABEL_73;
      }

      v300 = v371;
      v531 = 0;
      v301 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
      [v301 setResultType_];
      v534[0] = 0;
      v372 = [v259 executeRequest:v301 error:v534];
      v303 = v534[0];
      if (v372)
      {
        v373 = v372;
        v374 = v534[0];

        swift_setDeallocating();
        v525(v162 + qword_2813B2078, v523);
        v375 = *(*v162 + 48);
        v376 = *(*v162 + 52);
        swift_deallocClassInstance();
        v377 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
        v378 = *v377;
        v379 = v377[1];
        LOBYTE(v373) = *(v377 + 16);
        v380 = v377[3];
        v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
        v382 = *(v381 + 48);
        v383 = *(v381 + 52);
        v162 = swift_allocObject();
        v384 = v378;
        v385 = v379;

        sub_22766A070();
        *(v162 + 16) = v384;
        *(v162 + 24) = v385;
        *(v162 + 32) = v373;
        *(v162 + 40) = v380;
        v386 = v531;
        v387 = sub_22728488C(0);
        v531 = v386;
        if (v386)
        {
LABEL_88:

          swift_setDeallocating();
          v525(v162 + qword_2813B2078, v523);
          v388 = *(*v162 + 48);
          v389 = *(*v162 + 52);
          swift_deallocClassInstance();
          goto LABEL_104;
        }

        v300 = v387;
        v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
        [v414 setResultType_];
        v534[0] = 0;
        v415 = [v385 executeRequest:v414 error:v534];
        v416 = v534[0];
        if (v415)
        {
          v417 = v415;
          v418 = v534[0];

          swift_setDeallocating();
          v525(v162 + qword_2813B2078, v523);
          v419 = *(*v162 + 48);
          v420 = *(*v162 + 52);
          swift_deallocClassInstance();
          v421 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
          v422 = *v421;
          v423 = v421[1];
          LOBYTE(v417) = *(v421 + 16);
          v424 = v421[3];
          v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
          v426 = *(v425 + 48);
          v427 = *(v425 + 52);
          v162 = swift_allocObject();
          v384 = v422;
          v385 = v423;

          sub_22766A070();
          *(v162 + 16) = v384;
          *(v162 + 24) = v385;
          *(v162 + 32) = v417;
          *(v162 + 40) = v424;
          v428 = v531;
          v429 = sub_227284754(0);
          v531 = v428;
          if (v428)
          {
            goto LABEL_88;
          }

          v300 = v429;
          v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
          [v414 setResultType_];
          v534[0] = 0;
          v430 = [v385 executeRequest:v414 error:v534];
          v416 = v534[0];
          if (v430)
          {
            v431 = v430;
            v432 = v534[0];

            swift_setDeallocating();
            v525(v162 + qword_2813B2078, v523);
            v433 = *(*v162 + 48);
            v434 = *(*v162 + 52);
            swift_deallocClassInstance();
            v435 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
            v436 = *v435;
            v437 = v435[1];
            LOBYTE(v431) = *(v435 + 16);
            v438 = v435[3];
            v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
            v440 = *(v439 + 48);
            v441 = *(v439 + 52);
            v162 = swift_allocObject();
            v384 = v436;
            v385 = v437;

            sub_22766A070();
            *(v162 + 16) = v384;
            *(v162 + 24) = v385;
            *(v162 + 32) = v431;
            *(v162 + 40) = v438;
            v442 = v531;
            v443 = sub_227284874(0);
            v531 = v442;
            if (v442)
            {
              goto LABEL_88;
            }

            v300 = v443;
            v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
            [v414 setResultType_];
            v534[0] = 0;
            v444 = [v385 executeRequest:v414 error:v534];
            v416 = v534[0];
            if (v444)
            {
              v445 = v444;
              v446 = v534[0];

              swift_setDeallocating();
              v525(v162 + qword_2813B2078, v523);
              v447 = *(*v162 + 48);
              v448 = *(*v162 + 52);
              swift_deallocClassInstance();
              v449 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
              v450 = *v449;
              v451 = v449[1];
              LOBYTE(v445) = *(v449 + 16);
              v452 = v449[3];
              v453 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
              v454 = *(v453 + 48);
              v455 = *(v453 + 52);
              v162 = swift_allocObject();
              v384 = v450;
              v385 = v451;

              sub_22766A070();
              *(v162 + 16) = v384;
              *(v162 + 24) = v385;
              *(v162 + 32) = v445;
              *(v162 + 40) = v452;
              v456 = v531;
              v457 = sub_22728485C(0);
              v531 = v456;
              if (v456)
              {
                goto LABEL_88;
              }

              v300 = v457;
              v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
              [v414 setResultType_];
              v534[0] = 0;
              v458 = [v385 executeRequest:v414 error:v534];
              v416 = v534[0];
              if (v458)
              {
                v459 = v458;
                v460 = v534[0];

                swift_setDeallocating();
                v525(v162 + qword_2813B2078, v523);
                v461 = *(*v162 + 48);
                v462 = *(*v162 + 52);
                swift_deallocClassInstance();
                v463 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
                v464 = *v463;
                v465 = v463[1];
                LOBYTE(v459) = *(v463 + 16);
                v466 = v463[3];
                v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F0, &unk_22767F090);
                v468 = *(v467 + 48);
                v469 = *(v467 + 52);
                v162 = swift_allocObject();
                v384 = v464;
                v385 = v465;

                sub_22766A070();
                *(v162 + 16) = v384;
                *(v162 + 24) = v385;
                *(v162 + 32) = v459;
                *(v162 + 40) = v466;
                v470 = v531;
                v471 = sub_227284A3C(0);
                v531 = v470;
                if (v470)
                {
                  goto LABEL_88;
                }

                v300 = v471;
                v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
                [v414 setResultType_];
                v534[0] = 0;
                v472 = [v385 executeRequest:v414 error:v534];
                v416 = v534[0];
                if (v472)
                {
                  v473 = v472;
                  v474 = v534[0];

                  swift_setDeallocating();
                  v525(v162 + qword_2813B2078, v523);
                  v475 = *(*v162 + 48);
                  v476 = *(*v162 + 52);
                  swift_deallocClassInstance();
                  v477 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
                  v478 = *v477;
                  v479 = v477[1];
                  LOBYTE(v473) = *(v477 + 16);
                  v480 = v477[3];
                  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
                  v482 = *(v481 + 48);
                  v483 = *(v481 + 52);
                  v162 = swift_allocObject();
                  v384 = v478;
                  v385 = v479;

                  sub_22766A070();
                  *(v162 + 16) = v384;
                  *(v162 + 24) = v385;
                  *(v162 + 32) = v473;
                  *(v162 + 40) = v480;
                  v484 = v531;
                  v485 = sub_227284844(0);
                  v531 = v484;
                  if (v484)
                  {
                    goto LABEL_88;
                  }

                  v300 = v485;
                  v414 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
                  [v414 setResultType_];
                  v534[0] = 0;
                  v486 = [v385 executeRequest:v414 error:v534];
                  v416 = v534[0];
                  if (v486)
                  {
                    v487 = v486;
                    v488 = v534[0];

                    swift_setDeallocating();
                    v525(v162 + qword_2813B2078, v523);
                    v489 = *(*v162 + 48);
                    v490 = *(*v162 + 52);
                    swift_deallocClassInstance();
                    v491 = __swift_project_boxed_opaque_existential_0(v532, v532[3]);
                    v492 = *v491;
                    v493 = v491[1];
                    LOBYTE(v487) = *(v491 + 16);
                    v494 = v491[3];
                    v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
                    v496 = *(v495 + 48);
                    v497 = *(v495 + 52);
                    v162 = swift_allocObject();
                    v384 = v492;
                    v385 = v493;

                    sub_22766A070();
                    *(v162 + 16) = v384;
                    *(v162 + 24) = v385;
                    *(v162 + 32) = v487;
                    *(v162 + 40) = v494;
                    v498 = v531;
                    v499 = sub_22728482C(0);
                    v531 = v498;
                    if (v498)
                    {
                      goto LABEL_88;
                    }

                    v500 = v499;
                    v501 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
                    [v501 setResultType_];
                    v534[0] = 0;
                    v502 = [v385 executeRequest:v501 error:v534];
                    if (v502)
                    {
                      v503 = v502;
                      v504 = v534[0];

                      swift_setDeallocating();
                      v525(v162 + qword_2813B2078, v523);
                      v505 = *(*v162 + 48);
                      v506 = *(*v162 + 52);
                      swift_deallocClassInstance();
                      v507 = objc_allocWithZone(MEMORY[0x277CBE428]);
                      v508 = sub_22766BFD0();
                      v509 = [v507 initWithEntityName_];

                      v510 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
                      [v510 setResultType_];
                      v534[0] = 0;
                      v511 = [v526 executeRequest:v510 error:v534];
                      if (!v511)
                      {
                        v520 = v534[0];
                        sub_2276622C0();

                        swift_willThrow();
                        goto LABEL_104;
                      }

                      v512 = v511;
                      v513 = v534[0];

                      v11 = v530;
                      v10 = v528;
                      v14 = v529;
                      BYTE1(v6) = BYTE1(v527);
                      goto LABEL_5;
                    }

                    v519 = v534[0];
                    sub_2276622C0();

                    swift_willThrow();

LABEL_91:
                    swift_setDeallocating();
                    v262 = v162 + qword_2813B2078;
                    v263 = v523;
                    goto LABEL_92;
                  }
                }
              }
            }
          }
        }

        v518 = v416;
        sub_2276622C0();

        swift_willThrow();
      }

      else
      {
LABEL_89:
        v390 = v303;
        sub_2276622C0();

        swift_willThrow();
      }

      goto LABEL_91;
    }

LABEL_60:
    v264 = v169;
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_52;
  }

LABEL_5:
  sub_22766A770();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v534[0] = v19;
    *v18 = 136315138;
    v533 = BYTE1(v6);
    v20 = sub_22709C084();
    v21 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v20);
    v23 = sub_226E97AE8(v21, v22, v534);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_226E8E000, v16, v17, "Deleted catalog during Migration Step %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AA9A450](v19, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    (*(v530 + 8))(v529, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

LABEL_104:
  v413 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2272CA8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2272CA8F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2272CA940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2272CC52C(a3, v27 - v11);
  v13 = sub_22766C4B0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226E91484(v12);
  }

  else
  {
    sub_22766C4A0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22766C420();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22766C0B0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_226E91484(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E91484(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}