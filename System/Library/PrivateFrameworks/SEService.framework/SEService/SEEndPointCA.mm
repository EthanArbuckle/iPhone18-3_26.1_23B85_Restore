@interface SEEndPointCA
+ (id)decodeWithData:(id)data error:(id *)error;
+ (id)endPointCAWithIdentifier:(id)identifier subjectIdentifier:(id)subjectIdentifier instanceAID:(id)d secureElementAttestation:(id)attestation error:(id *)error;
- (SEEndPointCA)initWithCoder:(id)coder;
- (id)description;
- (id)dumpState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEEndPointCA

+ (id)endPointCAWithIdentifier:(id)identifier subjectIdentifier:(id)subjectIdentifier instanceAID:(id)d secureElementAttestation:(id)attestation error:(id *)error
{
  identifierCopy = identifier;
  subjectIdentifierCopy = subjectIdentifier;
  dCopy = d;
  attestationCopy = attestation;
  v16 = attestationCopy;
  if (identifierCopy && subjectIdentifierCopy && attestationCopy && error)
  {
    v17 = objc_opt_new();
    objc_storeStrong((v17 + 8), identifier);
    objc_storeStrong((v17 + 24), subjectIdentifier);
    objc_storeStrong((v17 + 40), attestation);
    v18 = dCopy;
    v19 = *(v17 + 16);
    *(v17 + 16) = v18;
LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    v19 = SESDefaultLogObject();
    v20 = *MEMORY[0x1E69E5148];
    SESCreateAndLogError();
    *error = v17 = 0;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v7;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  identifier = [(SEEndPointCA *)self identifier];
  instanceAID = [(SEEndPointCA *)self instanceAID];
  asHexString = [instanceAID asHexString];
  subjectIdentifier = [(SEEndPointCA *)self subjectIdentifier];
  secureElementAttestation = [(SEEndPointCA *)self secureElementAttestation];
  asHexString2 = [secureElementAttestation asHexString];
  certificates = [(SEEndPointCA *)self certificates];
  v11 = [v3 stringWithFormat:@"Identifier : %@ InstanceAID %@ : {\n\tsubjectIdentifier : %@\n\tsecureElementAttestation : %@\n\tcertificates (%lu) : {\n", identifier, asHexString, subjectIdentifier, asHexString2, objc_msgSend(certificates, "count")];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  certificates2 = [(SEEndPointCA *)self certificates];
  v13 = [certificates2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(certificates2);
        }

        asHexString3 = [*(*(&v20 + 1) + 8 * i) asHexString];
        [v11 appendFormat:@"\t\t : %@, \n", asHexString3];
      }

      v14 = [certificates2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  identifier = [(SEEndPointCA *)self identifier];

  if (identifier)
  {
    identifier2 = [(SEEndPointCA *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  subjectIdentifier = [(SEEndPointCA *)self subjectIdentifier];

  if (subjectIdentifier)
  {
    subjectIdentifier2 = [(SEEndPointCA *)self subjectIdentifier];
    [v3 setObject:subjectIdentifier2 forKeyedSubscript:@"subjectIdentifier"];
  }

  instanceAID = [(SEEndPointCA *)self instanceAID];

  if (instanceAID)
  {
    instanceAID2 = [(SEEndPointCA *)self instanceAID];
    asHexString = [instanceAID2 asHexString];
    [v3 setObject:asHexString forKeyedSubscript:@"instanceAID"];
  }

  certificates = [(SEEndPointCA *)self certificates];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __25__SEEndPointCA_dumpState__block_invoke;
  v14[3] = &unk_1E82D0FC8;
  v12 = v3;
  v15 = v12;
  [certificates enumerateObjectsUsingBlock:v14];

  return v12;
}

void __25__SEEndPointCA_dumpState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 asHexString];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"certificate-%u", a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SEEndPointCA *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  subjectIdentifier = [(SEEndPointCA *)self subjectIdentifier];
  [coderCopy encodeObject:subjectIdentifier forKey:@"subjectIdentifier"];

  secureElementAttestation = [(SEEndPointCA *)self secureElementAttestation];
  [coderCopy encodeObject:secureElementAttestation forKey:@"secureElementAttestation"];

  certificates = [(SEEndPointCA *)self certificates];
  [coderCopy encodeObject:certificates forKey:@"certificates"];

  instanceAID = [(SEEndPointCA *)self instanceAID];
  [coderCopy encodeObject:instanceAID forKey:@"instanceAID"];
}

- (SEEndPointCA)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = SEEndPointCA;
  v5 = [(SEEndPointCA *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v5->_subjectIdentifier;
    v5->_subjectIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementAttestation"];
    secureElementAttestation = v5->_secureElementAttestation;
    v5->_secureElementAttestation = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceAID"];
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

      hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
      v21 = v5->_instanceAID;
      v5->_instanceAID = hexStringAsData;
    }
  }

  return v5;
}

@end