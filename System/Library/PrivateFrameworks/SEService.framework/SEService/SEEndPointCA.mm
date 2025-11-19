@interface SEEndPointCA
+ (id)decodeWithData:(id)a3 error:(id *)a4;
+ (id)endPointCAWithIdentifier:(id)a3 subjectIdentifier:(id)a4 instanceAID:(id)a5 secureElementAttestation:(id)a6 error:(id *)a7;
- (SEEndPointCA)initWithCoder:(id)a3;
- (id)description;
- (id)dumpState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEEndPointCA

+ (id)endPointCAWithIdentifier:(id)a3 subjectIdentifier:(id)a4 instanceAID:(id)a5 secureElementAttestation:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v12 && v13 && v15 && a7)
  {
    v17 = objc_opt_new();
    objc_storeStrong((v17 + 8), a3);
    objc_storeStrong((v17 + 24), a4);
    objc_storeStrong((v17 + 40), a6);
    v18 = v14;
    v19 = *(v17 + 16);
    *(v17 + 16) = v18;
LABEL_8:

    goto LABEL_9;
  }

  if (a7)
  {
    v19 = SESDefaultLogObject();
    v20 = *MEMORY[0x1E69E5148];
    SESCreateAndLogError();
    *a7 = v17 = 0;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(SEEndPointCA *)self identifier];
  v5 = [(SEEndPointCA *)self instanceAID];
  v6 = [v5 asHexString];
  v7 = [(SEEndPointCA *)self subjectIdentifier];
  v8 = [(SEEndPointCA *)self secureElementAttestation];
  v9 = [v8 asHexString];
  v10 = [(SEEndPointCA *)self certificates];
  v11 = [v3 stringWithFormat:@"Identifier : %@ InstanceAID %@ : {\n\tsubjectIdentifier : %@\n\tsecureElementAttestation : %@\n\tcertificates (%lu) : {\n", v4, v6, v7, v9, objc_msgSend(v10, "count")];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(SEEndPointCA *)self certificates];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) asHexString];
        [v11 appendFormat:@"\t\t : %@, \n", v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [v11 appendString:@"\t}\n}"];
  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)dumpState
{
  v3 = objc_opt_new();
  v4 = [(SEEndPointCA *)self identifier];

  if (v4)
  {
    v5 = [(SEEndPointCA *)self identifier];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  v6 = [(SEEndPointCA *)self subjectIdentifier];

  if (v6)
  {
    v7 = [(SEEndPointCA *)self subjectIdentifier];
    [v3 setObject:v7 forKeyedSubscript:@"subjectIdentifier"];
  }

  v8 = [(SEEndPointCA *)self instanceAID];

  if (v8)
  {
    v9 = [(SEEndPointCA *)self instanceAID];
    v10 = [v9 asHexString];
    [v3 setObject:v10 forKeyedSubscript:@"instanceAID"];
  }

  v11 = [(SEEndPointCA *)self certificates];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __25__SEEndPointCA_dumpState__block_invoke;
  v14[3] = &unk_1E82D0FC8;
  v12 = v3;
  v15 = v12;
  [v11 enumerateObjectsUsingBlock:v14];

  return v12;
}

void __25__SEEndPointCA_dumpState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 asHexString];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"certificate-%u", a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SEEndPointCA *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(SEEndPointCA *)self subjectIdentifier];
  [v4 encodeObject:v6 forKey:@"subjectIdentifier"];

  v7 = [(SEEndPointCA *)self secureElementAttestation];
  [v4 encodeObject:v7 forKey:@"secureElementAttestation"];

  v8 = [(SEEndPointCA *)self certificates];
  [v4 encodeObject:v8 forKey:@"certificates"];

  v9 = [(SEEndPointCA *)self instanceAID];
  [v4 encodeObject:v9 forKey:@"instanceAID"];
}

- (SEEndPointCA)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SEEndPointCA;
  v5 = [(SEEndPointCA *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v5->_subjectIdentifier;
    v5->_subjectIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementAttestation"];
    secureElementAttestation = v5->_secureElementAttestation;
    v5->_secureElementAttestation = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceAID"];
    instanceAID = v5->_instanceAID;
    v5->_instanceAID = v17;

    if (!v5->_instanceAID)
    {
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_INFO, "InstanceAID missing in CA, assuming legacy (CCC) AID", buf, 2u);
      }

      v20 = [@"A000000809434343444B417631" hexStringAsData];
      v21 = v5->_instanceAID;
      v5->_instanceAID = v20;
    }
  }

  return v5;
}

@end